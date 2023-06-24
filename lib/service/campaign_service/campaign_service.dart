
import 'package:dio/dio.dart';
import 'package:sociops/model/model_campaign.dart';


class CampaignService {
  final Dio _dio = Dio();

  Future<News> getCampaignData() async {
    try {
      final response = await _dio.get('https://sociops-backend-production.up.railway.app/campaigns');
      if (response.statusCode == 200) {
        final data = News.fromJson(response.data);
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
