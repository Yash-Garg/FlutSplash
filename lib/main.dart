import 'package:flutsplash/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await DotEnv.load(fileName: ".env");
  runApp(MyApp());
}

const Color materialDark = Color(0xFF121212);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: materialDark,
        brightness: Brightness.dark,
        backgroundColor: materialDark,
        accentColor: const Color(0xFFCD57FF),
        scaffoldBackgroundColor: materialDark,
        fontFamily: GoogleFonts.workSans().fontFamily,
      ),
      home: HomePage(),
    );
  }
}
