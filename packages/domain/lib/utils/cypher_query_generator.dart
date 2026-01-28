class CypherQueryGenerator {
  static String generateQueryByKeywords(List<String> keywords) {
    if (keywords.isEmpty) return "";

    final matchClauses = keywords
        .asMap()
        .entries
        .map((entry) {
          return "(photo)-[]->(a${entry.key}) {name: '${entry.value}'})";
        })
        .join(", ");

    return "MATCH $matchClauses RETURN DISTINCT photo.name AS PhotoName";
  }

  static String generateQueryWithRelations(
    List<String> keywords,
    List<String> relations,
  ) {
    final count = (keywords.length < relations.length)
        ? keywords.length
        : relations.length;
    if (count == 0) return "";

    final matchClauses = List.generate(count, (i) {
      return "(photo)-[:${relations[i]}]->(a$i:Entity {name: '${keywords[i]}'})";
    }).join(", \n");

    return "MATCH $matchClauses\nRETURN photo.name AS PhotoName";
  }
}
