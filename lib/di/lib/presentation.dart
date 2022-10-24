part of digimon_di;

_registerPresentationDependencies({required GetIt getIt}) {
  /// Fields Use Cases
  getIt.registerLazySingleton(() => GetListUseCase(getIt()));

}
