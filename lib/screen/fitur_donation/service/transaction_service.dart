// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class TransactionService {
  final Dio _dio = Dio();

  Future<void> transactionUser({
    required idTransaction,
    required String amount,
    required String method,
  }) async {
    try {
      Response response = await _dio.post(
          'https://sociops-backend-production.up.railway.app/transactions',
          data: {
            "transaction_id": idTransaction,
            "amount": amount,
            "method": method,
          });
      print(response.data);
      return response.data;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      print(e.response);
      return e.response!.data;
    }
  }
}
