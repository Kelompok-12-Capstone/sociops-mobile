// import 'package:dio/dio.dart';
// import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';

// abstract class ServiceVolunteer {
//   static Future<CampaignModel?> createUser(
//     String? title,
//     String? about,
//     String? story,
//     double? totalActionDonation,
//     String? detailActionDonation,
//   ) async {
//       try {
//         var response = await Dio().post('https://sociops-backend-production.up.railway.app/campaigns',
//         data: {
//           "title": title,
//           "proposal": proposal,
//           "detail_action_donation": detailActionDonation,
//           "total_action_donation": totalActionDonation,
//         }
//       );
//       if (response.statusCode == 200) {
//         return CampaignModel(
//           title: response.data['title'], 
//           proposal: response.data['proposal'], 
//           totalActionDonation: response.data['total_action_donation'],
//           detailActionDonation: response.data['detail_action_donation'],
//         );
//       }
//       return null;
//     }
//     catch(e) {
//       if (e is DioException) {
//     if (e.response?.statusCode == 404) {
//       // Handle kesalahan 401 di sini
//       print('Permintaan tidak diotorisasi!');
//     } else {
//       // Handle kesalahan lainnya di sini
//       print('Terjadi kesalahan: ${e.toString()}');
//     }
//   } else {
//     // Handle exception lainnya di sini
//     print('Terjadi kesalahan: ${e.toString()}');
//   }
//       throw Exception(e.toString());
      
//     }
//   }
// }

// // import 'package:http/http.dart' as http;

// // class BuatVolunteerService {
// //   final _baseUrl = 'https://sociops-backend-production.up.railway.app/campaigns';

// //   Future postData({
// //     required String title,
// //     required String about,
// //     required String story,
// //     required String hastag,
// //   }) async {
// //     try {
// //       final response = await http.post(Uri.parse(_baseUrl),
// //       body: {
// //         "title": title,
// //         "about": about,
// //         "story": story,
// //         "hashtag": hastag,
// //       }
// //     );

// //       if (response.statusCode == 200) {
// //         return true;
// //       } else {
// //         return false;
// //       }
// //     } catch (e) {
// //       print(e.toString());
// //     }
// //   }
// // }