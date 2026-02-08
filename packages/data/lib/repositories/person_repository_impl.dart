import 'dart:typed_data';

import 'package:data/datasources/local/daos/person_dao.dart';
import 'package:data/mappers/person_mapper.dart';
import 'package:data/models/request/change_name_request.dart';
import 'package:data/models/request/delete_entity_request.dart';
import 'package:data/models/request/person_frequency_request.dart';
import 'package:data/models/request/person_search_request.dart';
import 'package:data/models/response/person_frequency_response.dart';
import 'package:data/services/ai_service.dart';
import 'package:data/services/web_service.dart';
import 'package:domain/entities/name_mapping.dart';
import 'package:domain/entities/person.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PersonRepository)
class PersonRepositoryImpl implements PersonRepository {
  final PersonDao _personDao;
  final AIService _aiService;
  final WebService _webService;

  PersonRepositoryImpl(this._personDao, this._aiService, this._webService);

  @override
  Future<void> deletePerson({required int id}) =>
      _personDao.deletePersonById(id);

  @override
  Stream<Person?> getPersonByIdStream({required int id}) {
    return _personDao.getPersonWithFacesStreamById(id).map((entity) {
      return entity?.toDomain();
    });
  }

  @override
  Future<int> getPersonCount() => _personDao.getPersonCount();

  @override
  Future<int?> getPersonIdBySystemName({required String systemName}) =>
      _personDao.findCurrentPersonIdByServerLabel(systemName);

  @override
  Stream<List<Person>> getPersonsStream() {
    return _personDao.getAllPersonsWithFacesStream().map((entities) {
      return entities.map((e) => e.toDomain()).toList();
    });
  }

  @override
  Future<void> insertPersonAndFace({
    required String systemName,
    required Uint8List imageBytes,
  }) => _personDao.insertPersonAndFace(systemName, imageBytes);

  @override
  Future<void> insertFace({
    required int personId,
    required String systemName,
    required Uint8List imageBytes,
  }) {
    return _personDao.insertFace(personId, systemName, imageBytes);
  }

  @override
  Future<bool> isNameExists({required String inputName}) =>
      _personDao.isNameExists(inputName);

  @override
  Future<void> mergePersons({required int sourceId, required int targetId}) =>
      _personDao.mergePersons(sourceId, targetId);

  @override
  Future<void> updatePersonInfo({
    required int id,
    required String name,
    required String phone,
    required bool isHome,
    int? faceId,
  }) => _personDao.updatePersonFullInfo(id, name, phone, isHome, faceId);

  @override
  Future<String?> getInputNameBySystemName({required String systemName}) =>
      _personDao.getInputNameBySystemName(systemName);

  @override
  Future<void> changePersonNameOnServer({
    required String dbName,
    required String oldName,
    required String newName,
  }) async {
    await _webService.changePersonName(
      request: ChangeNameRequest(
        dbName: dbName,
        oldName: oldName,
        newName: newName,
      ),
    );
  }

  @override
  Future<void> deletePersonOnServer({
    required String dbName,
    required String inputName,
    required String systemName,
  }) async {
    await Future.wait([
      _webService.deleteEntity(
        request: DeleteEntityRequest(dbName: dbName, entityName: inputName),
      ),
      _aiService.deletePerson(dbName: dbName, deletePerson: systemName),
    ]);
  }

  @override
  Future<List<Person>> fetchPhotoCountFromServer({
    required String dbName,
    required List<Person> localPeople,
  }) async {
    final response = await _webService.getPersonFrequency(
      request: PersonFrequencyRequest(
        dbName: dbName,
        personNames: localPeople.map((e) => e.inputName).toList(),
      ),
    );

    return localPeople.map((person) {
      final matched = response.frequencies.firstWhere(
        (f) => f.personName == person.inputName,
        orElse: () => Frequency(personName: person.inputName, frequency: 0),
      );
      return person.copyWith(photoCount: matched.frequency);
    }).toList();
  }

  @override
  Future<List<NameMapping>> getMismatchedFaceNames() async {
    return await _personDao.getMismatchedFaceNames();
  }

  @override
  Future<List<String>> getPersonPhotosNames({
    required String dbName,
    required String personName,
  }) async {
    try {
      final List<String> photoNames = await _webService.getPersonPhotosNames(
        request: PersonSearchRequest(dbName: dbName, personName: personName),
      );
      return photoNames;
    } catch (e) {
      rethrow;
    }
  }
}
