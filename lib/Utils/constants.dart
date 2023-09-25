import 'package:flutter/material.dart';

class Constants {
  String appName = 'Mycard';

  static const SUPPORTED_LOCALE = [
    Constants.EN_LOCALE,
    Constants.TR_LOCALE,
    Constants.IT_LOCALE
  ];

  static const TR_LOCALE = Locale('tr', 'TR');
  static const EN_LOCALE = Locale('en', 'US');
  static const IT_LOCALE = Locale('it', 'IT');
  static const LANG_PATH = 'assets/lang';
}
