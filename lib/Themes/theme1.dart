import 'package:flutter/material.dart';

ThemeData theme1() {
  return ThemeData(
    primaryColorLight: Colors.blueGrey,
    primaryColorDark: Colors.blueGrey,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromRGBO(2, 62, 138, 1),
      onPrimary: Colors.white,
      secondary: Color.fromRGBO(0, 119, 182, 1),
      onSecondary: Colors.white,
      tertiary: Colors.blueGrey,
      onTertiary: Colors.white,
      error: Colors.yellow,
      onError: Colors.black,
      background: Color.fromARGB(255, 172, 194, 199),
      onBackground: Colors.white,
      surface: Color.fromRGBO(181, 228, 140, 1),
      onSurface: Colors.greenAccent,
    ),
  );
}
