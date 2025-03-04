import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/routing/router.dart';
import 'package:new_recipe_app/core/routing/routes.dart';
import 'package:new_recipe_app/core/secure_storage.dart';
import 'package:new_recipe_app/login/data/model/user_model.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http://172.28.0.1:8888/api/v1"));

  Future<Map<String, dynamic>> fetchMyProfile() async {
    try {
      var response = await dio.get('/auth/me');

      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 401) {
        final credentials = await SecureStorage.getCredentials();

        if (credentials == null ||
            credentials['login'] == null ||
            credentials['password'] == null) {
          navigatorKey.currentContext!.go(Routes.login);
          throw Exception("Login credentials not found.");
        }
        final jwt =
            await login(credentials['login']!, credentials['password']!);

        await SecureStorage.deleteToken();
        await SecureStorage.saveToken(jwt);

        var newResponse = await dio.get('/auth/me');
        if (newResponse.statusCode == 200) {
          return newResponse.data;
        } else {
          navigatorKey.currentContext!.go(Routes.login);
          throw Exception("User is not authorized.");
        }
      } else {
        throw Exception("Profilni olishda xatolik yuz berdi.");
      }
    } catch (e) {
      throw Exception("Error: $e");
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

  Future<List<Map<String, dynamic>>> fetchCategories() async {
    var responseCategories = await dio.get('/categories/list');

    if (responseCategories.statusCode == 200) {
      List<Map<String, dynamic>> dataCategories =
          List<Map<String, dynamic>>.from(responseCategories.data);
      return dataCategories;
    } else {
      throw Exception("Error");
    }
  }

  Future<String> login(String login, String password) async {
    var response = await dio
        .post('/auth/login', data: {'login': login, 'password': password});
    if (response.statusCode == 200) {
      Map<String, String> data = Map<String, String>.from(response.data);
      return data['accessToken']!;
    } else {
      throw Exception("BIRODAR XATOLIK BOR ORTGA QAYT");
    }
  }

  Future<bool> signUp(UserModel model) async {
    var response = await dio.post(
      '/auth/register',
      data: model.toJson(),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<dynamic>> fetchRecipesByCategory(int categoryId) async {
    var response = await dio.get('/recipes/list?Category=$categoryId');
    if (response.statusCode == 200) {
      return response.data as List<dynamic>;
    } else {
      throw Exception(
          "/recipes/list?Category=$categoryId so'rovimiz o'xshamadi");
    }
  }

  Future<Map<String, dynamic>> fetchRecipeById(int recipeId) async {
    var response = await dio.get('/recipes/detail/$recipeId');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('/recipes/list?Category=$recipeId ERROR STATUS CODE');
    }
  }
}
