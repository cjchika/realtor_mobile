import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realtor_app/core/shared_provider/shared_providers.dart';
import 'package:realtor_app/data/api/property_api.dart';
import 'package:realtor_app/data/repository/property_repository.dart';

final propertyApiProvider = Provider((ref) {
  return PropertyApi(ref.read(dioClientProvider));
});

final propertyRepositoryProvider = Provider((ref) {
  return PropertyRepository(ref.read(propertyApiProvider));
});

final isLoadingProductsProvider = StateProvider((ref) {
  return true;
});