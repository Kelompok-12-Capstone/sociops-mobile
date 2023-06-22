import 'package:dio/dio.dart';

class TransactionService {
  static const String apiUrl =
      'https://sociops-backend-production.up.railway.app/transactions';
  static const String accessToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjE1MiIsIm5hbWUiOiJ0aGl5YXJhIiwicm9sZSI6IlVTRVIiLCJleHAiOjE2ODc0MTc0NzJ9.2yJ2D0Hhw7WaPx0qEKccNZEmr209dutH-me0W8YVY3A';

  static final Dio _dio = Dio();

  static Dio get dioInstance {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
    return _dio;
  }

  static Future<Response> createTransaction({
    int? amount,
    String? currency,
    int? paymentID,
    int? campaignID,
  }) async {
    try {
      final response = await dioInstance.post(apiUrl, data: {
        "amount": amount,
        "currency": "IDR",
        "payment_id": paymentID,
        "campaign_id": 1
      });
      print(response.data);
      return response;
    } on DioError catch (error) {
      print(error.response?.data);
      throw Exception('Failed to create transaction $error');
    }
  }
}
