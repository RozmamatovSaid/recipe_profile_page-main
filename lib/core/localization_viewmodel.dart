import 'dart:ui';
import 'package:flutter/cupertino.dart';

class LocalizationViewModel extends ChangeNotifier {
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  set currentLocale(Locale locale) {
    _currentLocale = locale;
    notifyListeners();
  }
}
