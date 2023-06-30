import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realtor_app/core/network/dio_client.dart';
import 'package:realtor_app/core/shared_preferences/helper.dart';
import 'package:realtor_app/core/shared_preferences/preferences.dart';

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

final preferencesProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefHelperProvider = Provider<SharedPreferenceHelper>((ref) {
  return SharedPreferenceHelper(ref.read(preferencesProvider));
});

// final setOpenFirstTimeProvider = StateProvider<SharedPreferenceHelper>((ref) {
//   return ref.read(sharedPrefHelperProvider).setOpenFirstTime(true);
//
// });