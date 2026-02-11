import 'package:flutter/material.dart';
import 'package:presentation/routes/router_config.dart';

class MetaApp extends StatelessWidget {
  const MetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Meta Search',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      routerConfig: metaAppRouter,
    );
  }
}
