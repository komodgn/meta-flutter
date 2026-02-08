import 'package:domain/usecases/run_full_analysis_use_case.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meta_search/injection/di.dart';
import 'package:meta_search/services/notification_service.dart';
import 'package:workmanager/workmanager.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    debugPrint("WorkManager Task Started: $task");
    try {
      await dotenv.load(fileName: ".env");
      await configureAllDependencies();

      await NotificationService.initialize();

      final useCase = getIt<RunFullAnalysisUseCase>();
      await useCase.execute();
      await NotificationService.showAnalysisComplete();

      return true;
    } catch (e, stackTrace) {
      debugPrint("WorkManager Error: $e");
      debugPrint("WorkManager StackTrace: $stackTrace");
      return false;
    }
  });
}
