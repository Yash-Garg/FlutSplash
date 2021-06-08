import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color accentClr = Color(0xFFFFF0E8);

ThemeData appTheme = ThemeData(
  accentColor: Colors.black,
  scaffoldBackgroundColor: const Color(0xFFFFF7EF),
  cardColor: accentClr,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(accentClr)),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: accentClr,
    foregroundColor: Colors.black,
  ),
  fontFamily: GoogleFonts.workSans().fontFamily,
);
