import 'dart:convert';

import 'package:http/http.dart' as http;

class FileService {

Future<void> uploadFile(String filePath) async {

  var url = Uri.parse('https://sociops-backend-production.up.railway.app/general/upload-pdf');
var body = {"link": "https://sociops-backend-production.up.railway.app/asset/35"};

var response = await http.post(url, body: body);

if (response.statusCode == 200) {
  // ignore: unused_local_variable
  var responseData = json.decode(response.body);
  // Berhasil - lakukan penanganan sesuai kebutuhan
  print('Response: ${response.body}');
} else {
  // Gagal - lakukan penanganan kesalahan
  print('Error: ${response.statusCode}');
}

}}