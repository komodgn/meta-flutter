import 'package:data/datasources/local/app_database.dart';
import 'package:data/datasources/local/daos/person_dao.dart';
import 'package:domain/entities/face.dart';
import 'package:domain/entities/person.dart';

extension PersonWithFacesMapper on PersonWithFaces {
  Person toDomain() {
    return Person(
      id: person.id,
      systemName: person.systemName,
      inputName: person.inputName,
      phoneNumber: person.phoneNumber,
      isHomeDisplay: person.isHomeDisplay,
      representativeFaceId: person.representativeFaceId,
      faces: faces.map((faceEntity) => faceEntity.toDomain()).toList(),
      photoCount: 0,
      totalDuration: 0,
      normalizedScore: 0.0,
    );
  }
}

extension FaceMapper on FaceEntity {
  Face toDomain() {
    return Face(
      id: id,
      personId: personId,
      systemName: systemName,
      imageData: imageData,
    );
  }
}
