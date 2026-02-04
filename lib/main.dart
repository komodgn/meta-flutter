import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:meta_search/application.dart';
import 'package:meta_search/background/work_manager.dart';
import 'package:meta_search/injection/di.dart';
import 'package:presentation/providers/gallery/gallery_provider.dart';
import 'package:presentation/providers/person/person_provider.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  configureAllDependencies();
  await Workmanager().initialize(callbackDispatcher);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GetIt.I<GalleryProvider>()..fetchImages(),
        ),
        ChangeNotifierProvider(
          create: (_) => GetIt.I<PersonProvider>()
            ..watchAllPersons()
            ..watchHomePersons(),
        ),
      ],
      child: const MetaApp(),
    ),
  );
}
