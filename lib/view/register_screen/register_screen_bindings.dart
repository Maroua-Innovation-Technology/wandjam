import 'package:get/get.dart';
import './register_screen_controller.dart';

class RegisterScreenBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(RegisterScreenController());
    }
}