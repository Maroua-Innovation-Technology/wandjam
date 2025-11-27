import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandjam/api/services/get_register_service.dart';

class RegisterScreenController extends GetxController {
  var formKey = GlobalKey<FormState>(debugLabel: "form");
  var name = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();

  var service = GetRegisterService();

  register() {
    service.registerService(
      name: name.text,
      email: "",
      password: password.text,
      phone: phone.text,
      context: Get.context!,
    );
  }
}
