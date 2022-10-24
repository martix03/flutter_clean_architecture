part of digimon_di;

void _registerDataDependencies({required GetIt getIt, required Dio dio}) {
  getIt.registerLazySingleton<DigimonService>(() => DigimonServiceImpl(dio));
}
