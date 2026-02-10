abstract class GraphRepository {
  Future<String> getFullGraphWebViewUrl();
  Future<String> getDetailGraphWebViewUrl({required String entityName});
}
