import 'package:domain/repositories/neo4j_repository.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:domain/repositories/graph_repository.dart';

@LazySingleton(as: GraphRepository)
class GraphRepositoryImpl implements GraphRepository {
  final Neo4jRepository neo4jRepository;
  final String _baseWebViewUrl;

  GraphRepositoryImpl({required this.neo4jRepository})
    : _baseWebViewUrl =
          dotenv.env['BASE_WEB_VIEW_URL'] ?? "http://10.0.2.2:8081";

  Future<String> _getDbName() async => await neo4jRepository.getDatabaseName();

  @override
  Future<String> getDetailGraphWebViewUrl({required String entityName}) async {
    try {
      final dbName = await _getDbName();
      final encodedEntityName = Uri.encodeComponent(entityName);

      return "$_baseWebViewUrl/entityTripleGraph/$dbName/$encodedEntityName";
    } catch (e) {
      debugPrint("Detail Graph View Error: $e");
      return "";
    }
  }

  @override
  Future<String> getFullGraphWebViewUrl() async {
    try {
      final dbName = await _getDbName();

      return "$_baseWebViewUrl/graph/$dbName";
    } catch (e) {
      debugPrint("Detail Graph View Error: $e");
      return "";
    }
  }
}
