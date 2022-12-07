import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 3,
    ),
    scaffoldBackgroundColor: Colors.black,

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom()
    )
  );
}
