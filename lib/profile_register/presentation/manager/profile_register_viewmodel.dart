import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterProfileViewModel extends ChangeNotifier {
  final TextEditingController genderController =
      TextEditingController(text: "Male/Female");

  final TextEditingController bioController = TextEditingController();
  File? _image;

  File? get image => _image;

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    }
  }

  void setGender(String gender) {
    genderController.text = gender;
    notifyListeners();
  }
}
