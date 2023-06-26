// ignore: file_names
import 'package:dio/dio.dart';

class UserService {
  final Dio _dio = Dio();

  Future<void> uploadImages(
      {required String link}) async {
    try {
      Response response = await _dio.post(
          'https://sociops-backend-production.up.railway.app/general/upload-image',
          data: {
            "link": link,
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

  static pengisianVolunteer(String inputText) {}
}