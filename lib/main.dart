import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meta_search/application.dart';
import 'package:meta_search/injection/di.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  configureAllDependencies();

  runApp(const MetaApp());
}
