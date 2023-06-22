import 'package:http/http.dart' as http;

class BuatVolunteerService {
  final _baseUrl = 'https://sociops-backend-production.up.railway.app/campaigns';

  Future postData({
    required String title,
    required String about,
    required String story,
    required String hastag,
  }) async {
    try {
      final response = await http.post(Uri.parse(_baseUrl),
      body: {
        "title": title,
        "about": about,
        "story": story,
        "hashtag": hastag,
      }
    );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
// import 'package:dio/dio.dart';

// class BuatVolunteerService {
//   final Dio _dio = Dio();

//   Future<void> buatVolunteer({
    // required String title,
    // required int categoryId,
    // required String description,
    // required String about,
    // required String story,
    // required String targetRecipient,
    // required String proposal,
    // required String image,
    // required String video,
    // required String hastag,
    // required String location,
    // required String startDate,
    // required String endDate,
    // required String targetDonation,
    // required int totalActionDonation,
    // required int detailActionDonation,
    // required String type,
    // required String status,

//   }) async {
//     try {
//       Response response = await _dio.post(
//           'https://sociops-backend-production.up.railway.app/campaigns',
//           data: {
//             "title": title,
//             "category_id": categoryId,
//             "description": description,
//             "about": about,
//             "story": story,
//             "target_recipient": targetRecipient,
//             "proposal": proposal,
//             "image": image,
//             "video": video,
//             "hashtag": hastag,
//             "location": location,
//             "start_date": startDate,
//             "end_date": endDate,
//             "target_donation": targetDonation,
//             "total_action_donation": totalActionDonation,
//             "detail_action_donation": detailActionDonation,
//             "type": type,
//             "status": status,
//           });
//       // ignore: avoid_print
//       print(response.data);
//       return response.data;
//       // ignore: deprecated_member_use
//     } on DioError catch (e) {
//       // ignore: avoid_print
//       print(e.response);
//       return e.response!.data;
//     }
//   }

//   static pengisianVolunteer(String inputText) {}
// }