import 'package:get/get.dart';

import '../views/home_screen/home_screen.dart';
import '../views/splash_screen/splash_screen.dart';

List<GetPage> pages = [
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
    transition: Transition.leftToRightWithFade,
  ),
  GetPage(
    name: '/home',
    page: () => HomePage(),
  ),
];
