import 'package:esercizio/presentation/list/views/list_page_connector.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class DigimonRoute {
  static const String root = '/';
  static const String detail = '/detail';
}

final digimonRouter = GoRouter(
  initialLocation: DigimonRoute.root,
  routes: [
    GoRoute(path: DigimonRoute.root, builder: (_, __) => const ListPageConnector()),
  ],
);

