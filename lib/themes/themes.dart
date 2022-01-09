import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static get lightTheme {
    return ThemeData(
      backgroundColor: Color(0xFFECEEF0),
      colorScheme: ColorScheme.light(
        //number buttons
        primary: Color(0xFFF5F4F7),
        //orange upper buttons
        secondary: Color(0xFFE6D9C3),
        //purple side buttons
        primaryVariant: Color(0xffb3a5d9),
        //1,2,3.. shadow colors
        surface: Color(0xffc6c6c5),
        //last column shadow colors
        onSecondary: Color(0xffb3a5d9),
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }

  static get darkTheme {
    return ThemeData(
      backgroundColor: Color(0xFF343739),
      colorScheme: ColorScheme.dark(
        //number buttons
        primary: Color(0xFF38393D),
        //orange upper buttons
        secondary: Color(0xFF4B463B),
        //purple side buttons
        primaryVariant: Color(0xff44375E),
        //text color on buttons
        onSurface: Color(0xffe4e7e8),
      ),
      scaffoldBackgroundColor: Colors.grey,
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }
}
