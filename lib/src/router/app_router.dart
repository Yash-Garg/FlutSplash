import 'package:get/get.dart';

import '../views/collection_screens/collection_photos_screen.dart';
import '../views/home_screen/home_screen.dart';
import '../views/image_screens/fullscreen_image.dart';
import '../views/image_screens/image_info_screen.dart';
import '../views/search_screen/search_screen.dart';
import '../views/splash_screen/splash_screen.dart';

List<GetPage> pages = [
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
    transition: Transition.topLevel,
  ),
  GetPage(
    name: '/home',
    page: () => HomePage(),
    transition: Transition.topLevel,
  ),
  GetPage(
    name: '/search',
    page: () => SearchScreen(),
    transition: Transition.topLevel,
  ),
  GetPage(
    name: '/collection/photos',
    page: () => CollectionPhotos(),
    transition: Transition.topLevel,
  ),
  GetPage(
    name: '/image/info',
    page: () => ImageInfoScreen(),
    transition: Transition.topLevel,
  ),
  GetPage(
    name: '/image/full',
    page: () => FullScreenImage(),
    transition: Transition.topLevel,
  )
];
