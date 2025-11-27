import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension Lang on BuildContext {
  void showLoader({
    bool dismissible = false,
    bool canUserPop = true,
    bool dense = false,
    bool useRootNavigator = true,
  }) {
    Get.bottomSheet(
      isDismissible: dismissible,
      SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Get.isDarkMode ? Colors.grey.shade800 : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              Text('Patientez svp...'.tr, style: TextStyle(fontSize: 16)),
              Center(
                child: LoadingAnimationWidget.waveDots(
                  color: Palette.primary,
                  size: 60  ,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // showModalBottomSheet(
    //     context: this,
    //     useRootNavigator: useRootNavigator,
    //     builder: (context) => PopScope(
    //         canPop: canUserPop,
    //         onPopInvoked: (didPop) async {},
    //         child: LoaderWidget(dense: dense)),
    //     isDismissible: dismissible);
  }

  void popLoader() {
    Navigator.of(this).pop();
  }
}
