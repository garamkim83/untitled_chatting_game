import 'package:flutter/material.dart';

ThemeData theme1() {
  return ThemeData(
    primaryColorLight: Colors.blueGrey,
    primaryColorDark: Colors.blueGrey,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromRGBO(22, 138, 173, 1),
      onPrimary: Colors.white,
      secondary: Color.fromRGBO(30, 96, 145, 1),
      onSecondary: Colors.white,
      tertiary: Colors.blueGrey,
      onTertiary: Colors.white,
      error: Colors.yellow,
      onError: Colors.black,
      background: Color.fromARGB(255, 115, 150, 150),
      onBackground: Colors.white,
      surface: Color.fromRGBO(181, 228, 140, 1),
      onSurface: Colors.greenAccent,
    ),
  );
}
