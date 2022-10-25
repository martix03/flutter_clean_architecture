import 'package:dio/dio.dart';
import 'package:esercizio/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/dio_config.dart';
import 'di/di.dart';

Future<void> main(List<String> args) async {
  await setup();
  runApp(MyApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final dio = buildDio();

  initializeDigimonFeatureDependencyInjection(
    serviceLocator: featureGetIt,
    dioClient: dio,
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: digimonRouter.routeInformationProvider,
      routeInformationParser: digimonRouter.routeInformationParser,
      routerDelegate: digimonRouter.routerDelegate,
    );
  }
}
