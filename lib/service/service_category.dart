// import 'package:dio/dio.dart';
// import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';

// class CategoryService {
//   final _baseUrl = 'https://sociops-backend-production.up.railway.app/categories';

//   Future<List<CategoryModels>> getCategoryService() async {
//     List<CategoryModels> listCategoryModels = [];
//     String url = "$_baseUrl/categories.json";

//     Dio dio = Dio();
//     final response = await dio.get(url);

//     List<dynamic> listCategoryService = response.data as List;

//     for(var element in listCategoryService) {
//       listCategoryModels.add(
//         CategoryModels(
//           id: element['id'], 
//           createdAt: element['createdAt'], 
//           updateAt: element['updateAt'], 
//           name: element['name'],
//         ),
//       );
//     }
//     return listCategoryModels;
//   }

//   // Future getData() async {
//   //   try {
//   //     final response = await http.get(Uri.parse(_baseUrl));

//   //     if (response.statusCode == 200) {
//   //       print(response.body);
//   //       Iterable it = jsonDecode(response.body);
//   //       List<BuatVolunteerModels> categoryModels = it.map((e) => BuatVolunteerModels.fromJson(e)).toList();
//   //       return categoryModels;
//   //     }

//   //   } catch (e) {
//   //     print(e.toString());
//   //   }
//   // }
// }