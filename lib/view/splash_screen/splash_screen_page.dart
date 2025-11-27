import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_screen_controller.dart';
import 'package:wandjam/config/palette.dart';
import 'package:wandjam/config/constant.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Constants.appName,
              style: TextStyle(
                fontSize: 40,
                color: Palette.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
