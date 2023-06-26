import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';

abstract class VolunteerServices {
  static Future<CampaignModel?> createUser(
    String title,
    int categoryId,
    String description,
    String story,
    String proposal,
    String image,
    String video,
    String hashtag,
    String targetRecipient,
    String location,
    String startDate,
    String endDate,
    int targetDonation,
    int totalActionDonation,
    String detailActionDonation,
    String type,
    String status,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      const token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjgiLCJuYW1lIjoiQnVkaSIsInJvbGUiOiJBRE1JTiIsImV4cCI6MTY4NzgwODI1MX0.CXIlsCu0o_qOy_UR1SeqU_XuV7QVqg1QvSXrDUjfHI4';
      prefs.setString('token', token);
      // final token = prefs.getString('token');

      print('Token: $token');

      Map<String, dynamic> headers = {'Authorization': 'Bearer $token'};
      Options options = Options(headers: headers);

      final response = await Dio().post(
        'https://sociops-backend-production.up.railway.app/campaigns',
        data: {
          "title":
              "[DATA TEST] Inovasi untuk Masa Depan: Mendukung Riset dan Teknologi",
          "category_id": 12,
          "description":
              "[DATA TEST] Kami berkomitmen untuk mendukung riset dan teknologi sebagai sumber inovasi untuk masa depan. Kami memfasilitasi pengembangan penelitian, pembiayaan startup teknologi, dan kolaborasi antara ilmuwan, insinyur, dan komunitas teknologi untuk menciptakan solusi berkelanjutan.",
          "story":
              "[DATA TEST] Kisah kami dimulai ketika kami melihat potensi besar dalam riset dan teknologi untuk mengatasi masalah global. Kami merasa terpanggil untuk menyediakan platform dan sumber daya bagi ilmuwan, insinyur, dan komunitas teknologi untuk berkolaborasi, berinovasi, dan mewujudkan solusi yang berkelanjutan.",
          "proposal": "XXX",
          "image": "XXX",
          "video": "XXX",
          "hashtag": "[DATA TEST] #InovasiMasaDepan",
          "target_recipient": "[DATA TEST] Riset dan teknologi inovatif",
          "location": "[DATA TEST] Silicon Valley, Amerika Serikat",
          "start_date": "2023-10-14T14:56:18.732Z",
          "end_date": "2023-12-14T14:56:18.732Z",
          "target_donation": 10000000,
          "total_action_donation": 50000,
          "detail_action_donation":
              "[DATA TEST] Setiap donasi akan digunakan untuk mendukung riset inovatif, pembiayaan startup teknologi, dan program kolaborasi di bidang riset dan teknologi.",
          "type": "FUNDRAISING",
          "status": "",
        },
        options: options,
      );

      if (response.statusCode == 200) {
        return CampaignModel(
          title: response.data['title'],
          proposal: response.data['proposal'],
          total_action_donation: response.data['total_action_donation'],
          detail_action_donation: response.data['detail_action_donation'],
          category_id: response.data['category_id'],
          description: response.data['description'],
          story: response.data['story'],
          target_recipient: response.data['target_recipient'],
          image: response.data['image'],
          video: response.data['video'],
          hashtag: response.data['hashtag'],
          location: response.data['location'],
          start_date: response.data['start_date'],
          end_date: response.data['end_date'],
          target_donation: response.data['target_donation'],
          type: response.data['type'],
          status: response.data['status'],
        );
      }

      return null;
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        print(e.response?.data);
        return null;
      }
    }
    return null;
  }
}
