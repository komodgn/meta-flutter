import 'dart:async';

import 'package:domain/entities/person.dart';
import 'package:domain/usecases/get_all_person_use_case.dart';
import 'package:domain/usecases/get_home_display_person_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/providers/base_provider.dart';

@injectable
class PersonProvider extends BaseProvider {
  final GetHomeDisplayPersonUseCase getHomeDisplayPersonUseCase;
  final GetAllPersonUseCase getAllPersonUseCase;

  StreamSubscription? _homeSub;
  StreamSubscription? _allSub;

  List<Person> _homePersons = [];
  List<Person> _allPersons = [];

  PersonProvider({
    required this.getHomeDisplayPersonUseCase,
    required this.getAllPersonUseCase,
  });

  List<Person> get homePersons => _homePersons;
  List<Person> get allPersons => _allPersons;

  void watchHomePersons() {
    _homeSub?.cancel();
    _homeSub = getHomeDisplayPersonUseCase.execute().listen((persons) {
      _homePersons = persons;
      notifyListeners();
    });
  }

  void watchAllPersons() {
    _allSub?.cancel();
    _allSub = getAllPersonUseCase.execute().listen((persons) {
      _allPersons = persons;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _homeSub?.cancel();
    _allSub?.cancel();
    super.dispose();
  }
}
