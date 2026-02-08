import 'dart:typed_data';

import 'package:domain/entities/name_mapping.dart';
import 'package:domain/entities/person.dart';

abstract class PersonRepository {
  Stream<List<Person>> getPersonsStream();

  Stream<Person?> getPersonByIdStream({required int id});

  Future<int> getPersonCount();

  Future<int?> getPersonIdBySystemName({required String systemName});

  Future<List<NameMapping>> getMismatchedFaceNames();

  Future<bool> isNameExists({required String inputName});

  Future<String?> getInputNameBySystemName({required String systemName});

  Future<void> insertPersonAndFace({
    required String systemName,
    required Uint8List imageBytes,
  });

  Future<void> insertFace({
    required int personId,
    required String systemName,
    required Uint8List imageBytes,
  });

  Future<void> updatePersonInfo({
    required int id,
    required String name,
    required String phone,
    required bool isHome,
    required int? faceId,
  });

  Future<void> deletePerson({required int id});

  Future<void> mergePersons({required int sourceId, required int targetId});

  Future<void> changePersonNameOnServer({
    required String dbName,
    required String oldName,
    required String newName,
  });

  Future<void> deletePersonOnServer({
    required String dbName,
    required String inputName,
    required String systemName,
  });

  Future<List<Person>> fetchPhotoCountFromServer({
    required String dbName,
    required List<Person> localPeople,
  });

  Future<List<String>> getPersonPhotosNames({
    required String dbName,
    required String personName,
  });
}
