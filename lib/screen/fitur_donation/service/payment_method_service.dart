import 'package:dio/dio.dart';

class ApiPaymentMethodService {
  static const String apiUrl =
      'https://sociops-backend-production.up.railway.app/payment-methods';
  static const String accessToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjE1MiIsIm5hbWUiOiJ0aGl5YXJhIiwicm9sZSI6IlVTRVIiLCJleHAiOjE2ODc0MTc0NzJ9.2yJ2D0Hhw7WaPx0qEKccNZEmr209dutH-me0W8YVY3A';

  static final Dio _dio = Dio();

  static Dio get dioInstance {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
    return _dio;
  }

  static Future<Response> fetchPaymentMethods() async {
    try {
      final response = await dioInstance.get(apiUrl);
      return response;
    } catch (error) {
      throw Exception('Failed to fetch payment methods');
    }
  }
}
