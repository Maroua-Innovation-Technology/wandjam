import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:wandjam/config/palette.dart';
import 'package:wandjam/global/helper/check_email.dart';
import 'package:wandjam/global/helper/check_number.dart';
import 'package:wandjam/global/widgets/custom_button.dart';
import 'package:wandjam/global/widgets/custom_textfield.dart';
import 'package:wandjam/routes/name_page.dart';
import './login_screen_controller.dart';

class LoginScreenPage extends GetView<LoginScreenController> {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Palette.primary, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Create New Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: controller.phone,
                  hintText: 'Phone',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
                    }
                    if (!CheckPhoneNumber.check(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: controller.password,
                  hintText: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your Password?',
                        style: TextStyle(color: Palette.primary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                CustomButton(
                  text: 'Sign In',
                  onTap: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.login();
                    }
                  },
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Get.toNamed(NamePage.register);
                  },
                  child: const Text(
                    'Create new account',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
