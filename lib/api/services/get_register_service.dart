import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandjam/api/host/host.dart';
import 'package:wandjam/api/services/data_provider.dart';
import 'package:wandjam/auth/auth.dart';
import 'package:wandjam/config/extension/context.extensions.dart';
import 'package:wandjam/config/extension/get.extensions.dart';
import 'package:wandjam/global/widgets/custom_button.dart';
import 'package:wandjam/global/widgets/dialogue.dart';
import 'package:wandjam/models/user_models.dart';
import 'package:wandjam/routes/name_page.dart';

class GetRegisterService {
  var auth = Auth();
  var host = Host();
  var service = DataService();

  Future registerService({
    required String name,
    required String email,
    required String password,
    required String phone,
    required BuildContext context,
  }) async {
    context.showLoader();

    try {
      return await service
          .postData(
            "auth/register",
            body: {
              'name': name,
              'email': password,
              'password': password,
              'phone': phone,
            },
          )
          .then((value) {
            var response = jsonDecode(value.body);

            if (value.statusCode >= 200 && value.statusCode < 300) {
              Get.back();
              simpleDialog(
                context: Get.context!,
                title: "Register",
                message: response['message'],
                cancelButton: Expanded(
                  child: CustomButton(
                    text: "Ok",
                    onTap: () {
                      Get.back();
                      Get.offAllNamed(NamePage.login);
                    },
                  ),
                ),
                confirmButton: const SizedBox(),
              );
            } else {
              Get.back();
              simpleDialog(
                context: Get.context!,
                title: "Register",
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
