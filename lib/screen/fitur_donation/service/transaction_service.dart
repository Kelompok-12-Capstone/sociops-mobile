import 'package:dio/dio.dart';
import 'package:sociops/screen/fitur_donation/model/transaction_model.dart';

class TransactionService {
  static const String apiUrl =
      'https://sociops-backend-production.up.railway.app/transactions';
  static const String accessToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjE3MSIsIm5hbWUiOiJCdWRpIEFsdmFyZXoiLCJyb2xlIjoiVVNFUiIsImV4cCI6MTY4NzYyODc0NH0.Z9-SnY8VG4SPtWW3RuK4HeIpysVjohsnaqDB3DEyH30';

  static final Dio _dio = Dio();

  static Dio get dioInstance {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
    return _dio;
  }

  static Future<TransactionResponse?> createTransaction({
    int? amount,
    String? currency,
    int? paymentID,
    int? campaignID,
  }) async {
    try {
      final response = await dioInstance.post(
        apiUrl,
        data: {
          "amount": amount,
          "currency": "IDR",
          "payment_id": paymentID,
          "campaign_id": 3,
        },
      );
      return TransactionResponse.fromJson(response.data);
      // ignore: deprecated_member_use
    } on DioError catch (error) {
      print(error.response?.data);
      throw Exception('Failed to create transaction $error');
    }
  }
}
