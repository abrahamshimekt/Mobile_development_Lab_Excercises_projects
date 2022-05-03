import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme darkTextTheme = TextTheme(
      bodyText1: GoogleFonts.openSans(
          fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.white),
      headline1: GoogleFonts.openSans(
          fontSize: 32.0, fontWeight: FontWeight.bold, color:  Colors.white),
      headline2: GoogleFonts.openSans(
          fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
      headline3: GoogleFonts.openSans(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline6: GoogleFonts.openSans(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white));
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0, fontWeight: FontWeight.w600, color: Colors.black),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    headline6: GoogleFonts.openSans(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        })),
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.black, backgroundColor: Colors.white),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.black, backgroundColor: Colors.white),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: Colors.tealAccent),
        textTheme: lightTextTheme);
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
