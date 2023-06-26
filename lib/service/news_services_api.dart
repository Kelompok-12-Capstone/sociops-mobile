import 'package:dio/dio.dart';
import 'package:sociops/model/berita/model_berita.dart';

class NewsService {
  static const String apiUrl =
      'https://sociops-backend-production.up.railway.app/news';

  final Dio _dio = Dio();

  Future<NewsResponse> fetchNews() async {
    try {
      final response = await _dio.get(apiUrl);
      print(response.data);
      if (response.statusCode == 200) {
        return NewsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load news');
      }
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }
}
