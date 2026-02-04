import 'dart:math';

import 'package:domain/entities/person.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHomeDisplayPersonUseCase {
  final PersonRepository personRepository;

  GetHomeDisplayPersonUseCase({required this.personRepository});

  Stream<List<Person>> execute() {
    return personRepository.getPersonsStream().map((people) {
      final displayPeople = people.where((p) => p.isHomeDisplay).toList();

      return _normalizeScores(displayPeople);
    });
  }

  List<Person> _normalizeScores(List<Person> people) {
    if (people.isEmpty) return [];

    final maxPhotoCount = people
        .map((p) => p.photoCount)
        .fold(0, max)
        .clamp(1, double.infinity);

    final maxDuration = people
        .map((p) => p.totalDuration)
        .fold(0, max)
        .clamp(1, double.infinity);

    final updatedList = people.map((person) {
      final normalizedScore =
          ((person.photoCount / maxPhotoCount) +
              (person.totalDuration / maxDuration)) /
          2.0;

      return person.copyWith(normalizedScore: normalizedScore);
    }).toList();

    updatedList.sort((a, b) => b.normalizedScore.compareTo(a.normalizedScore));

    return updatedList;
  }
}
