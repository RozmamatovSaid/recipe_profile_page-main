import 'package:flutter/material.dart';

import '../../data/repositories/auth_repository.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({required AuthRepository repo}) : _repo = repo;
  final AuthRepository _repo;

  String? _erorMessage;

  bool get hasError => _erorMessage != null;

  String? get erorMessage => _erorMessage;

  final formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign Up
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final dateOfBirthdayController = TextEditingController();
  final passwordSingUpController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<bool> login() async {
    try {
      await _repo.login(loginController.text, passwordController.text);
    } on Exception catch (e) {
      _erorMessage = e.toString();
      notifyListeners();
      return false;
    }
    _erorMessage = null;
    notifyListeners();
    return true;
  }
}
