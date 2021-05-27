import '../../injection_container.dart';
import 'data/data_sources/new_feature_data_source.dart';
import 'data/repositories/new_feature_repository_impl.dart';
import 'domain/repositories/new_feature_repository.dart';
import 'domain/use_cases/new_feature_use_case.dart';

mixin NewFeatureInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();
    
    // use cases
    sl.registerLazySingleton(() => NewFeatureUseCase(repository: sl()));

       // repositories
    sl.registerLazySingleton<NewFeatureRepository>(() => NewFeatureRepositoryImpl(dataSource: sl()));

       // data sources
    sl.registerLazySingleton<NewFeatureDataSource>(
            () => NewFeatureDataSourceImpl(source: sl()));


  }
}