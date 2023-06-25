import 'package:dio/dio.dart';

class ApiPaymentMethodService {
  static const String apiUrl =
      'https://sociops-backend-production.up.railway.app/payment-methods';
  static const String accessToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjgiLCJuYW1lIjoiQnVkaSIsInJvbGUiOiJBRE1JTiIsImV4cCI6MTY4NzcxNDQwNH0.uaVjlTQE3P_DzJZ8r4y5PllJ-lRVauHqtIv0VPspDsE';

  static final Dio _dio = Dio();

  static Dio get dioInstance {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
    return _dio;
  }

  static Future<Response> fetchPaymentMethods() async {
    try {
      final response = await dioInstance.get(apiUrl);
      print(response.data);
      return response;
    } catch (error) {
      throw Exception('Failed to fetch payment methods');
    }
  }
}
