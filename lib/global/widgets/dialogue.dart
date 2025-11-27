import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/palette.dart';
import 'custom_button.dart';

simpleDialog({
  required BuildContext context,
  required String message,
  required Widget confirmButton,
  required Widget cancelButton,
  String title = "Error",
}) {
  Get.bottomSheet(
    Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Get.isDarkMode ? Colors.grey.shade800 : Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(message),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [confirmButton, cancelButton],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

bottomSheetExit(
  BuildContext context, {
  String? title,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    height: 150,
    decoration: BoxDecoration(
      color:
          Get.isDarkMode
              ? const Color.fromARGB(255, 120, 115, 115)
              : Colors.grey.shade200,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title!,
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyLarge,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: CustomButton(text: 'Non', onTap: onCancel)),
            Expanded(child: CustomButton(text: 'Oui', onTap: onConfirm)),
          ],
        ),
      ],
    ),
  );
}

simpleDialogueCardSansTitles(BuildContext context) {
  Get.dialog(
    Padding(
      padding: EdgeInsets.all(Get.width * 0.4),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Center(child: CircularProgressIndicator()),
      ),
    ),
  );
}

simpleDialogueCardSansTitle(String msg, BuildContext context) {
  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(15.0),
      height: Get.height * 0.1,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.grey.shade800 : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(width: 15.0),
          Expanded(child: Text(msg)),
        ],
      ),
    ),
  );
}
