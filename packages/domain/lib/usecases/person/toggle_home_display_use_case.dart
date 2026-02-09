import 'package:domain/entities/person.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ToggleHomeDisplayUseCase {
  final PersonRepository repository;

  ToggleHomeDisplayUseCase({required this.repository});

  Future<void> execute(Person person) async {
    final updated = person.copyWith(isHomeDisplay: !person.isHomeDisplay);

    return await repository.updatePerson(updated);
  }
}
