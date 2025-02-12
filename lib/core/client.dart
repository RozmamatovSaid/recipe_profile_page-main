import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http://172.17.144.1:8888/api/v1"));

  Future<Map<String, dynamic>> fetchMyProfile() async {
    var response = await dio.get('/auth/details/1');
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Error 404");
    }
  }

  Future<List<Map<String, dynamic>>> fetchRecipes() async {
    var responseRecipe = await dio.get('/recipes/list');
    if (responseRecipe.statusCode == 200) {
      List<Map<String, dynamic>> dataRecipe =
          List<Map<String, dynamic>>.from(responseRecipe.data);
      return dataRecipe;
    } else {
      throw Exception("error 404");
    }
  }

  Future<List<dynamic>> fetchOnBoarding() async {
    var response = await dio.get('/onboarding/list');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("xato");
    }
  }
}
