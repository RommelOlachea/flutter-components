import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.indigo,
      //appBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //floatingActionButton Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      //ElevatedButtons Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)));

  static final ThemeData darhkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //appBar theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    scaffoldBackgroundColor: Colors.black,
    //textButtomTheme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
  );
}
