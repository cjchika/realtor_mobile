import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:realtor_app/core/network/dio_exceptions.dart';
import 'package:realtor_app/data/api/property_api.dart';
import 'package:realtor_app/data/models/property_model.dart';

class PropertyRepository {
  final PropertyApi _propertyApi;

  PropertyRepository(this._propertyApi);

  Future<PropertyModel> fetchJoke() async {
    try {
      final res = await _propertyApi.fetchProperties();
      final jokeModel = PropertyModel.fromJson(res);
      return jokeModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
