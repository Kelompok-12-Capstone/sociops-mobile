import 'package:dio/dio.dart';

class UserService {
  final Dio _dio = Dio();

  Future<void> registerUser(
      {required String email, required String password}) async {
    try {
      Response response = await _dio.post(
          'https://sociops-backend-production.up.railway.app/auth/signup',
          data: {
            "email": email,
            "password": password,
            "role": "USER",
            "name": "aku"
          });
      // ignore: avoid_print
      print(response.data);
      return response.data;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // ignore: avoid_print
      print(e.response);
      return e.response!.data;
    }
  }
  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      Response response = await _dio.post(
          'https://sociops-backend-production.up.railway.app/auth/signin',
          data: {
            "email": email,
            "password": password,
          });
      // ignore: avoid_print
      print(response.data);
      return response.data;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // ignore: avoid_print
      print(e.response);
      return e.response!.data;
    }
  }

  static registrasiuser(String inputText) {}
}
