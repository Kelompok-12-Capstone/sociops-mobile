import 'package:http/http.dart' as http;

class ApiService {
  Future<void> postData(
    String targetRecipient,
    String proposal,
    String detailActionDonation,
    int totalActionDonation,
  ) async {

    final url = Uri.parse('https://sociops-backend-production.up.railway.app/campaigns');

    final response = await http.post(
      url,
      body: {
        'target_recipient': targetRecipient,
        'proposal': proposal,
        'detail_action_donation': detailActionDonation,
        'total_action_donation': totalActionDonation,
      },
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Data berhasil dikirim');
    } else {
      // ignore: avoid_print
      print('Gagal mengirim data. Status code: ${response.statusCode}');
    }
  }
}

// class ApiService {
//   final String baseUrl = 'https://sociops-backend-production.up.railway.app/campaigns';

//   Future<dynamic> postData({
    // required String targetRecipient,
    // required String proposal,
    // required String detailActionDonation,
    // required int totalActionDonation,

//     dynamic requestBody}) async {
      
//     try {
//       final response = await http.post(
//         Uri.parse('$baseUrl/$BuatCampaignModels'),
//         body: requestBody,
//       );

//       if (response.statusCode == 200) {
//         return response.body;
//       } else {
//         throw Exception('HTTP Error: ${response.statusCode}');
//       }
//     } catch (error) {
//       throw Exception('Error: $error');
//     }
//   }
// }
