import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:get/get.dart';

extension Utils on GetInterface {
  void showtoast(
    String msg, {
    int? position = 0,
    required BuildContext context,
  }) {
    FlutterToastr.show(
      msg,
      context,
      duration: FlutterToastr.lengthShort,
      position: position == 0 ? FlutterToastr.bottom : FlutterToastr.top,
    );
  }
}
