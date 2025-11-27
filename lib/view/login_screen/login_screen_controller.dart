import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandjam/api/services/get_login_service.dart';

class LoginScreenController extends GetxController {
  var formKey = GlobalKey<FormState>(debugLabel: "form_login");
  var phone = TextEditingController();
  var password = TextEditingController();

  var service = GetLoginService();

  login() {
    service.loginService(
      phone: phone.text,
      password: password.text,
      context: Get.context!,
    );
  }
}
