import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wandjam/auth/auth.dart';
import 'package:wandjam/routes/name_page.dart';

class SplashScreenController extends GetxController {
  var storage = GetStorage();
  var auth = Auth();
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      if (auth.isLoggedIn()) {
        Get.offAllNamed(NamePage.home);
      } else {
        Get.offAllNamed(NamePage.login);
      }
    });
  }
}
