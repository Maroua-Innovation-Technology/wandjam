import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wandjam/routes/name_page.dart';
import 'package:wandjam/view/login_screen/login_screen_bindings.dart';
import 'package:wandjam/view/login_screen/login_screen_page.dart';
import 'package:wandjam/view/register_screen/register_screen_bindings.dart';
import 'package:wandjam/view/register_screen/register_screen_page.dart';
import 'package:wandjam/view/splash_screen/splash_screen_bindings.dart';
import 'package:wandjam/view/splash_screen/splash_screen_page.dart';

class Routes {
  static List<GetPage<dynamic>>? pages = [
    GetPage(
      name: NamePage.initialRoute,
      binding: SplashScreenBindings(),
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: NamePage.login,
      binding: LoginScreenBindings(),
      page: () => const LoginScreenPage(),
    ),
    GetPage(
      name: NamePage.register,
      binding: RegisterScreenBindings(),
      page: () => const RegisterScreenPage(),
    ),
  ];
}
