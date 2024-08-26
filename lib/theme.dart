import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  useMaterial3: true, // Material 3 temasını etkinleştirir
  primaryColor: Color(0xFF5C3CBB), // Ana renk
  hintColor: Color(0xFFF1C817), // Vurgu rengi
  scaffoldBackgroundColor: Color(0xFFFFFFFF), // Arka plan rengi

  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFFFFFFFF), // AppBar arka plan rengi
    titleTextStyle: TextStyle(
      color: Colors.black, // AppBar başlık yazı rengi
      fontSize: 20,
    ),
    iconTheme: IconThemeData(
      color: Colors.black, // AppBar ikon rengi
    ),
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black, // Ana metin yazı rengi
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: Color(0xFF5C3CBB), // Ana metin yazı rengi
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      color: Colors.black, // İkinci metin yazı rengi
      fontSize: 14,
    ),
    displayLarge: TextStyle(
      color: Colors.black, // Başlık yazı rengi
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF5C3CBB), // Buton arka plan rengi
    textTheme: ButtonTextTheme.primary, // Buton yazı rengi
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFF1C817), // FAB arka plan rengi
    foregroundColor: Colors.black, // FAB ikon rengi
  ),
);
