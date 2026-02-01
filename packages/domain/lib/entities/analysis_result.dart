import 'dart:typed_data';

class AnalysisResult {
  final List<PersonAnalysisEntity> persons;
  final int newMaxIndex;

  AnalysisResult({required this.persons, required this.newMaxIndex});
}

class PersonAnalysisEntity {
  final String systemName;
  final Uint8List? imageBytes;
  final bool isFaceExit;

  PersonAnalysisEntity({
    required this.systemName,
    this.imageBytes,
    required this.isFaceExit,
  });
}
