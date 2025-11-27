import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandjam/api/host/host.dart';
import 'package:wandjam/api/services/data_provider.dart';
import 'package:wandjam/auth/auth.dart';
import 'package:wandjam/global/widgets/custom_button.dart';
import 'package:wandjam/global/widgets/dialogue.dart';

class GetLoginService {
  var auth = Auth();
  var host = Host();
  var service = DataService();

  Future loginService({
    required String phone,
    required String password,
    required BuildContext context,
  }) async {
    try {
      return await service
          .postData(
            "auth/login",
            headers: host.headerWithoutAutorization,
            body: {'phone': phone, 'password': password},
          )
          .then((value) {
            var response = jsonDecode(value.body);
            print(value.statusCode);
            print(response);
            if (value.statusCode == 200) {
              Get.back();
              simpleDialog(
                context: Get.context!,
                title: "Login",
                message: response['message'],
                cancelButton: Expanded(
                  child: CustomButton(text: "Ok", onTap: () => Get.back()),
                ),
                confirmButton: const SizedBox(),
              );
            } else {
              Get.back();
              simpleDialog(
                context: Get.context!,
                title: "Login",
                message: response['message'],
                cancelButton: Expanded(
                  child: CustomButton(text: "Ok", onTap: () => Get.back()),
                ),
                confirmButton: const SizedBox(),
              );
            }
          });
    } on Exception catch (e) {
      Get.back();
      simpleDialog(
        context: Get.context!,
        title: "Login",
        message: e.toString(),
        cancelButton: Expanded(
          child: CustomButton(text: "Ok", onTap: () => Get.back()),
        ),
        confirmButton: const SizedBox(),
      );
    }
  }
}
