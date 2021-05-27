abstract class NewFeatureDataSource {
  Future function();
}

class NewFeatureDataSourceImpl extends NewFeatureDataSource {
  NewFeatureDataSourceImpl({required this.source});
  
  final source;

  @override
  Future function() {
    // TODO - implement function
    throw UnimplementedError();
  }
}