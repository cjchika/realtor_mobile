import 'package:realtor_app/core/network/constant/endpoints.dart';
import 'package:realtor_app/core/network/dio_client.dart';

class PropertyApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  PropertyApi(this._dioClient);

  Future<Map<String, dynamic>> fetchProperties() async {
    try {
      final res = await _dioClient.get(Endpoints.baseUrl);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
