import 'package:flutsplash/screens/home_screen.dart';
import 'package:flutsplash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

const Color accentClr = Color(0xFFFFF0E8);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: accentClr,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        accentColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFFFFF7EF),
        cardColor: accentClr,
        bottomAppBarTheme: BottomAppBarTheme(color: accentClr.withOpacity(0.8)),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(accentClr)),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: accentClr,
          foregroundColor: Colors.black,
        ),
        fontFamily: GoogleFonts.workSans().fontFamily,
      ),
      initialRoute: "/splash",
      getPages: [
        GetPage(
          name: "/splash",
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
      ],
      home: HomePage(),
    );
  }
}
