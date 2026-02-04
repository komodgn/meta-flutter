import 'package:domain/entities/name_mapping.dart';
import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/person_table.dart';
import '../tables/face_table.dart';

part 'person_dao.g.dart';

class PersonWithFaces {
  final PersonEntity person;
  final List<FaceEntity> faces;
  PersonWithFaces({required this.person, required this.faces});
}

@DriftAccessor(tables: [Persons, Faces])
class PersonDao extends DatabaseAccessor<AppDatabase> with _$PersonDaoMixin {
  PersonDao(AppDatabase db) : super(db);

  Future<int> insertPerson(String systemName) {
    return into(persons).insert(
      PersonsCompanion.insert(systemName: systemName, inputName: systemName),
    );
  }

  Future<int> insertFace(
    int personId,
    String systemName,
    Uint8List imageBytes,
  ) {
    return into(faces).insert(
      FacesCompanion.insert(
        personId: personId,
        systemName: systemName,
        imageData: imageBytes,
      ),
    );
  }

  Future<int?> findCurrentPersonIdByServerLabel(String serverLabel) async {
    final query = selectOnly(faces)
      ..addColumns([faces.personId])
      ..where(faces.systemName.equals(serverLabel))
      ..limit(1);
    final row = await query.getSingleOrNull();
    return row?.read(faces.personId);
  }

  Stream<List<PersonWithFaces>> getAllPersonsWithFacesStream() {
    final query = select(
      persons,
    ).join([leftOuterJoin(faces, faces.personId.equalsExp(persons.id))]);

    return query.watch().map((rows) {
      final grouped = <PersonEntity, List<FaceEntity>>{};
      for (final row in rows) {
        final person = row.readTable(persons);
        final face = row.readTableOrNull(faces);
        grouped.putIfAbsent(person, () => []);
        if (face != null) grouped[person]!.add(face);
      }
      return grouped.entries
          .map((e) => PersonWithFaces(person: e.key, faces: e.value))
          .toList();
    });
  }

  Stream<PersonWithFaces?> getPersonWithFacesStreamById(int id) {
    final query = select(persons).join([
      leftOuterJoin(faces, faces.personId.equalsExp(persons.id)),
    ])..where(persons.id.equals(id));

    return query.watch().map((rows) {
      if (rows.isEmpty) return null;
      final person = rows.first.readTable(persons);
      final facesList = rows
          .map((row) => row.readTableOrNull(faces))
          .whereType<FaceEntity>()
          .toList();
      return PersonWithFaces(person: person, faces: facesList);
    });
  }

  Future<void> mergePersons(int sourceId, int targetId) async {
    await transaction(() async {
      await (update(faces)..where((t) => t.personId.equals(sourceId))).write(
        FacesCompanion(personId: Value(targetId)),
      );
      await (delete(persons)..where((t) => t.id.equals(sourceId))).go();
    });
  }

  Future<List<NameMapping>> getMismatchedFaceNames() async {
    final query =
        select(faces).join([
          innerJoin(persons, persons.id.equalsExp(faces.personId)),
        ])..where(
          faces.systemName.equalsExp(persons.inputName).not() &
              faces.systemName.like('인물%'),
        );

    final rows = await query.get();
    return rows
        .map(
          (row) => NameMapping(
            serverName: row.readTable(faces).systemName,
            actualName: row.readTable(persons).inputName,
          ),
        )
        .toList();
  }

  Future<void> insertPersonAndFace(
    String systemName,
    Uint8List imageBytes,
  ) async {
    await transaction(() async {
      final personId = await insertPerson(systemName);
      final faceId = await insertFace(personId, systemName, imageBytes);
      await updateRepresentativeFace(personId, faceId);
    });
  }

  Future<void> updateRepresentativeFace(int personId, int faceId) {
    return (update(persons)..where((t) => t.id.equals(personId))).write(
      PersonsCompanion(representativeFaceId: Value(faceId)),
    );
  }

  Future<void> updatePersonFullInfo(
    int personId,
    String newName,
    String newPhone,
    bool isHome,
    int? faceId,
  ) {
    return (update(persons)..where((t) => t.id.equals(personId))).write(
      PersonsCompanion(
        inputName: Value(newName),
        phoneNumber: Value(newPhone),
        isHomeDisplay: Value(isHome),
        representativeFaceId: Value(faceId),
      ),
    );
  }

  Future<int> getPersonCount() async {
    final countExp = persons.id.count();
    final query = selectOnly(persons)..addColumns([countExp]);
    final result = await query.getSingle();
    return result.read(countExp) ?? 0;
  }

  Future<bool> isNameExists(String inputName) async {
    final query = select(persons)..where((t) => t.inputName.equals(inputName));
    final result = await query.getSingleOrNull();
    return result != null;
  }

  Future<String?> getInputNameBySystemName(String systemName) async {
    final query =
        select(
            persons,
          ).join([innerJoin(faces, faces.personId.equalsExp(persons.id))])
          ..where(faces.systemName.equals(systemName))
          ..limit(1);

    final row = await query.getSingleOrNull();
    return row?.readTable(persons).inputName;
  }

  Future<PersonEntity?> getPersonById(int personId) =>
      (select(persons)..where((t) => t.id.equals(personId))).getSingleOrNull();

  Future<void> deletePersonById(int personId) =>
      (delete(persons)..where((t) => t.id.equals(personId))).go();
}
