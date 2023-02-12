import 'package:berifood_app/ui/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../ui/login_page.dart';
import '../ui/splash_screen.dart';
import '../ui/introduction/tutorial_page_1.dart';
import '../ui/introduction/tutorial_page_2.dart';
import '../ui/introduction/tutorial_page_3.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "/introduction",
          page: () => const TutorialPageOne(),
        ),
        GetPage(
          name: "/introduction2",
          page: () => const TutorialPageTwo(),
        ),
        GetPage(
          name: "/introduction3",
          page: () => const TutorialPageThree(),
        ),
        GetPage(
          name: "/login",
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
      ];
}
