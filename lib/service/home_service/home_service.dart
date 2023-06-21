import '../../model/model_campaign.dart';

import 'package:dio/dio.dart';

class EventService {
  late Dio _dio;

  EventService() {
    _dio = Dio();
  }

  Future<List<EventModel>> getEvents() async {
    try {
      final response = await _dio.get('https://sociops-backend-production.up.railway.app/campaigns');

      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data;

        return responseData.map((json) => EventModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load events');
      }
    } catch (e) {
      throw Exception('Failed to load events: $e');
    }
  }
}
