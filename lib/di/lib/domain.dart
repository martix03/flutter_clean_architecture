part of digimon_di;

void _registerDomainDependencies({required GetIt getIt}) {
  getIt.registerLazySingleton<DigimonRepository>(
      () => DigimonRepositoryImp(getIt()));
}
