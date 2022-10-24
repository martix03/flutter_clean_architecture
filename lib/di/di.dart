library digimon_di;

import 'package:dio/dio.dart';
import 'package:esercizio/data/repositories/digimon_repository_impl.dart';
import 'package:esercizio/domain/repositories/digimon_repository.dart';
import 'package:get_it/get_it.dart';

import '../core/always_json_inteceptor.dart';
import '../data/data_sources/digimon_service.dart';
import '../data/data_sources/digimon_service_impl.dart';
import '../domain/usecases/get_list_use_case.dart';

part 'lib/data.dart';
part 'lib/domain.dart';
part 'lib/presentation.dart';

GetIt get getIt => _serviceLocator!;

GetIt? _serviceLocator;

void initializeDigimonFeatureDependencyInjection(
    {required GetIt serviceLocator,
    Dio? dioClient}) async {
  _serviceLocator = serviceLocator;

  Dio dio;
  if (dioClient == null) {
    dio = Dio();
    dio.transformer = AlwaysJSONTransformer();
  } else {
    dio = dioClient;
  }

  _registerDataDependencies(getIt: getIt, dio: dio);
  _registerDomainDependencies(getIt: getIt);
  _registerPresentationDependencies(getIt: getIt);
}
