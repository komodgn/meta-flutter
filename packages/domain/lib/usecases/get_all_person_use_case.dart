import 'package:domain/entities/person.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllPersonUseCase {
  final PersonRepository personRepository;

  GetAllPersonUseCase({required this.personRepository});

  Stream<List<Person>> execute() {
    return personRepository.getPersonsStream().map((people) {
      final sortedList = List<Person>.from(people);
      sortedList.sort((a, b) => a.inputName.compareTo(b.inputName));
      return sortedList;
    });
  }
}
