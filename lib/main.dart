import 'package:flutsplash/screens/home.dart';
import 'package:flutsplash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await DotEnv.load(fileName: ".env");
  runApp(MyApp());
}

const Color materialDark = Color(0xFF121212);
const Color accentClr = Color(0xFF00bac6);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: materialDark,
        brightness: Brightness.dark,
        accentColor: accentClr,
        scaffoldBackgroundColor: materialDark,
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xFF2e2e2e)),
        dialogBackgroundColor: materialDark,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(accentClr)),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: materialDark,
          actionTextColor: accentClr,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
        fontFamily: GoogleFonts.workSans().fontFamily,
      ),
      initialRoute: "/splash",
      getPages: [
        GetPage(
          name: "/splash",
          page: () => SplashScreen(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
          transition: Transition.rightToLeftWithFade,
        ),
      ],
      home: HomePage(),
    );
  }
}
