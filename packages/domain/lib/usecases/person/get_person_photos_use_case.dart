import 'package:domain/entities/gallery_image.dart';
import 'package:domain/repositories/gallery_repository.dart';
import 'package:domain/repositories/neo4j_repository.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPersonPhotosUseCase {
  final PersonRepository personRepository;
  final GalleryRepository galleryRepository;
  final Neo4jRepository neo4jRepository;

  GetPersonPhotosUseCase({
    required this.personRepository,
    required this.galleryRepository,
    required this.neo4jRepository,
  });

  Future<List<GalleryImage>> execute(String personName) async {
    final dbName = await neo4jRepository.getDatabaseName();

    final List<String> photoNames = await personRepository.getPersonPhotosNames(
      dbName: dbName,
      personName: personName,
    );

    if (photoNames.isEmpty) return [];

    return await galleryRepository.findMatchedUris(photoNames);
  }
}
