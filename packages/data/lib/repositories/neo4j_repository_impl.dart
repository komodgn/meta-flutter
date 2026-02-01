import 'package:data/datasources/local/prefs/neo4j_config_storage.dart';
import 'package:domain/repositories/neo4j_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Neo4jRepository)
class Neo4jRepositoryImpl implements Neo4jRepository {
  final Neo4jConfigStorage neo4jConfigStorage;

  Neo4jRepositoryImpl({required this.neo4jConfigStorage});

  @override
  Future<String> getDatabaseName() async {
    return neo4jConfigStorage.getDatabaseName();
  }
}
