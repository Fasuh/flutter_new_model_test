import 'package:dartz/dartz.dart';
import 'package:flutter_new_model_test/features/new_feature/data/data_sources/new_feature_data_source.dart';
import 'package:flutter_new_model_test/features/new_feature/domain/repositories/new_feature_repository.dart';

class NewFeatureRepositoryImpl extends NewFeatureRepository {
  NewFeatureRepositoryImpl({required this.dataSource});

  final NewFeatureDataSource dataSource;
  
  Future<Either<Failure, >> function() {
    // TODO - implement function
    throw UnimplementedError();
  }
}