import 'package:flutter/material.dart';

// Définition d'un thème clair
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    onSurface: Colors.black,
    primary: Colors.deepOrange,
    onPrimary: Colors.white,
    secondaryContainer: Colors.grey,
    secondary: Color(0xFFD32F2F),
    onSecondary: Colors.white,
    error: Colors.red,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
);

// Définition d'un thème sombre
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF121212),
    onSurface: Colors.white,
    primary: Colors.grey,
    onPrimary: Colors.white,
    secondary: Color(0xFFF57C00),
    onSecondary: Colors.black,
    error: Colors.red,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1F1F1F), // Gris moyen pour la barre d'app
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white),
  ),
);
