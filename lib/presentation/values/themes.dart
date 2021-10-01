import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static const colorScheme = ColorScheme(
    primary: Color(0xFFfe832a),
    primaryVariant: Color(0xFFfe832a),
    secondary: Color(0xFFFDB434),
    secondaryVariant: Color(0xFFFDB434),
    surface: Colors.white,
    background: Colors.white,
    error: Color(0xffe44034),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: colorScheme.primary,
    fontFamily: "Poppins",
    colorScheme: colorScheme,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFFF3F3F3),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: colorScheme.primary,
      selectedLabelStyle: TextStyle(
        color: colorScheme.primary,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedItemColor: const Color(0xFFA4A4A4),
      unselectedLabelStyle: const TextStyle(
        color: Color(0xFFA4A4A4),
        fontSize: 14,
      ),
      type: BottomNavigationBarType.fixed,
    ),
    splashColor: colorScheme.primary.withOpacity(0.26),
    disabledColor: const Color(0xFFA4A4A4),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}
