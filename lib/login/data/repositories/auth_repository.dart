import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/core/secure_storage.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiClient client;

  Future<void> login(String login, String password) async {
    final String token = await client.login(login, password);
    await SecureStorage.deleteToken();
    await SecureStorage.deleteCredentials();
    await SecureStorage.SaveCredentials(login, password);
    await SecureStorage.saveToken(token);
  }
}
