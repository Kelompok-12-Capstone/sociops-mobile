
import 'package:dio/dio.dart';

import '../../model/model_volunteer.dart';


class VolunteerService {
  final Dio _dio = Dio();

  get data => null;

  Future<Volunteer> getVolunteerData() async {
    try {
      final response = await _dio.get('https://sociops-backend-production.up.railway.app/campaigns?type=VOLUNTEER');
      if (response.statusCode == 200) {
        final data = Volunteer.fromJson(response.data);
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
