import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: colors.primary,
      titleTextStyle: textTheme.titleLarge,
      iconTheme: IconThemeData(color: colors.onPrimary),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.primary,
      foregroundColor: colors.onSecondary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colors.background,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.onBackground.withOpacity(0.5),
    ),
  );

  static final colors = _AppColors();
  static final textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: colors.textPrimary),
    titleLarge: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: colors.textPrimary),
    bodyLarge: TextStyle(fontSize: 16.0, color: colors.textPrimary),
    bodyMedium: TextStyle(fontSize: 14.0, color: colors.textSecondary),
    bodySmall: TextStyle(fontSize: 12.0, color: colors.textSecondary),
  );

  static InputDecoration searchInputDecoration = InputDecoration(
    hintText: 'Search',
    prefixIcon: Icon(Icons.search, color: colors.onBackground),
    border: InputBorder.none,
    filled: true,
    fillColor: colors.background.withOpacity(0.24),
  );

  // Public getter for colors
  static _AppColors get colorss => colors;
}

class _AppColors {
  final Color primary = Colors.blue;
  final Color secondary = Colors.orange;
  final Color background = Colors.white;
  final Color onBackground = Colors.black;
  final Color textPrimary = Colors.black;
  final Color textSecondary = Colors.grey;
  final Color onPrimary = Colors.white;
  final Color onSecondary = Colors.black;
}
