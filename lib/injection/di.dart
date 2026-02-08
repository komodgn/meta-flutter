import 'package:data/injection/di.dart' as data;
import 'package:domain/injection/di.dart' as domain;
import 'package:presentation/injection/di.dart' as presentation;
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureAllDependencies() async {
  getIt.allowReassignment = true;

  await data.configureDependencies(getIt: getIt);
  await domain.configureDependencies(getIt: getIt);
  await presentation.configureDependencies(getIt: getIt);
}
