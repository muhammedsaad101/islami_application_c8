import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryLightColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryLightColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        unselectedIconTheme: IconThemeData(
          size: 28,
        )),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primaryLightColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData();
}
