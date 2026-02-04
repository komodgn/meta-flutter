import 'package:domain/entities/person.dart';
import 'package:domain/usecases/get_all_person_use_case.dart';
import 'package:domain/usecases/get_home_display_person_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class PersonProvider extends ChangeNotifier {
  final GetHomeDisplayPersonUseCase getHomeDisplayPersonUseCase;
  final GetAllPersonUseCase getAllPersonUseCase;

  List<Person> _homePersons = [];
  List<Person> _allPersons = [];

  PersonProvider({
    required this.getHomeDisplayPersonUseCase,
    required this.getAllPersonUseCase,
  });

  List<Person> get homePersons => _homePersons;
  List<Person> get allPersons => _allPersons;

  void watchHomePersons() {
    getHomeDisplayPersonUseCase.execute().listen((persons) {
      _homePersons = persons;
      notifyListeners();
    });
  }

  void watchAllPersons() {
    getAllPersonUseCase.execute().listen((persons) {
      _allPersons = persons;
      notifyListeners();
    });
  }
}
