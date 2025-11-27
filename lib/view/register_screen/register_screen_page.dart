import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:wandjam/config/palette.dart';
import 'package:wandjam/global/helper/check_email.dart';
import 'package:wandjam/global/helper/check_number.dart';
import 'package:wandjam/global/widgets/custom_button.dart';
import 'package:wandjam/global/widgets/custom_textfield.dart';
import 'package:wandjam/routes/name_page.dart';
import 'package:wandjam/view/register_screen/register_screen_controller.dart';

class RegisterScreenPage extends GetView<RegisterScreenController> {
  const RegisterScreenPage({super.key});

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
                      'Connect to your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: controller.name,
                  hintText: 'Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: controller.phone,
                  hintText: 'Phone',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!CheckPhoneNumber.check(value)) {
                      return 'Please enter a valid Phone number';
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

                const SizedBox(height: 50),
                CustomButton(
                  text: 'Sign Up',
                  onTap: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.register();
                    }
                  },
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Get.toNamed(NamePage.login);
                  },
                  child: const Text(
                    'Already have an account',
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
