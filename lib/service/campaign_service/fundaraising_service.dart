
import 'package:dio/dio.dart';

import '../../model/model_fundaraising.dart';


class FundaraisingService {
  final Dio _dio = Dio();

  get data => null;

  Future<Fundaraising> getFundaraisingData() async {
    try {
      final response = await _dio.get('https://sociops-backend-production.up.railway.app/campaigns?type=FUNDRAISING');
      if (response.statusCode == 200) {
        final data = Fundaraising.fromJson(response.data);
        return data;
      } else {
        throw Exception(response.data);
      }
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }
}
