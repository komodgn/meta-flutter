import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/pages/graph_page.dart';
import 'package:presentation/pages/nl_search_page.dart';
import 'package:presentation/pages/person_page.dart';
import 'package:presentation/pages/home_page.dart';
import 'package:presentation/providers/search/nl_search_provider.dart';
import 'package:provider/provider.dart';

class MetaApp extends StatelessWidget {
  const MetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meta Search',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MainHolder(),
    );
  }
}

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<StatefulWidget> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _selectedIndex = 1;

  final List<Widget> _screens = [
    const PersonScreen(),
    const HomeScreen(),
    ChangeNotifierProvider(
      create: (_) => GetIt.I<NlSearchProvider>(),
      child: const NLSearchScreen(),
    ),
    const GraphWebView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_rounded),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
