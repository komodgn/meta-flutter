import 'dart:io';

import 'package:domain/entities/person.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/pages/graph_page.dart';
import 'package:presentation/pages/home_page.dart';
import 'package:presentation/pages/nl_search_page.dart';
import 'package:presentation/pages/person_detail_page.dart';
import 'package:presentation/pages/person_page.dart';
import 'package:presentation/pages/photo_detail_screen.dart';
import 'package:presentation/providers/graph/graph_provider.dart';
import 'package:presentation/providers/person/person_detail_provider.dart';
import 'package:presentation/providers/search/drag_search_provider.dart';
import 'package:presentation/providers/search/nl_search_provider.dart';
import 'package:presentation/routes/router_paths.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final metaAppRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouterPaths.home,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.people,
              builder: (context, state) => const PersonScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.search,
              builder: (context, state) => ChangeNotifierProvider(
                create: (_) => GetIt.I<NlSearchProvider>(),
                child: const NLSearchScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.explore,
              builder: (context, state) => ChangeNotifierProvider(
                create: (_) => GetIt.I<GraphProvider>(),
                child: const GraphWebView(),
              ),
            ),
          ],
        ),
      ],
    ),

    GoRoute(
      path: RouterPaths.photoDetail,
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => GetIt.I<DragSearchProvider>(),
        child: PhotoDetailScreen(imageFile: state.extra as File),
      ),
    ),

    GoRoute(
      path: RouterPaths.personDetail,
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => GetIt.I<PersonDetailProvider>(),
        child: PersonDetailPage(person: state.extra as Person),
      ),
    ),
  ],
);

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_rounded),
            label: 'Explore',
          ),
        ],
        onTap: (index) => navigationShell.goBranch(index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
