// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wandjam/api/host/host.dart';

import '../../config/palette.dart';

class DataService {
  late BuildContext context;
  void use(BuildContext context) {
    this.context = context;
  }

  Future<http.Response> getData(
    String endpoint, {
    String? bearer,
    dynamic headers,
  }) async {
    final data = await http
        .get(Host.baseUrl(endpoint: endpoint), headers: headers)
        .timeout(
          const Duration(milliseconds: 10000),
          onTimeout: () {
            throw TimeoutException('Time out, connection lost'.tr);
          },
        );
    return data;
  }

  Future<http.Response> postData(
    String endpoint, {
    dynamic body,
    dynamic headers,
  }) async {
    var data = await http
        .post(Host.baseUrl(endpoint: endpoint), body: body, headers: headers)
        .timeout(
          const Duration(milliseconds: 10000),
          onTimeout:
              () => throw TimeoutException('Time out, connection lost'.tr),
        );
    return data;
  }

  Future<http.Response> deleteData(String endpoint, String? bearer) async {
    var timezone = DateTime.now().timeZoneOffset;
    Map<String, String> headers = {
      'Accept': 'application/json',
      'offset-timezone':
          ((timezone.isNegative ? -1 : 1) * timezone.inHours).toString(),
      'Authorization':
          'Bearer $bearer', // You should get the dotenv instance before using it
    };

    var data = await http
        .get(
          Uri.parse(Host.host + endpoint), // Replace with your API URL
          headers: headers,
        )
        .timeout(
          const Duration(milliseconds: 100000),
          onTimeout: () {
            throw TimeoutException('Time out, connection lost');
          },
        );

    // Handling of different response code cases
    // var response = jsonDecode(data.body);

    // context.popLoader();
    // Handling of different response code cases
    // handleError(data.statusCode, response['message']);

    return data;
  }

  void handleError({
    required int statusCode,
    required String title,
    required String message,
    dynamic Function()? onTap,
  }) {
    switch (statusCode) {
      case 500:
        print(message);

        break;
      case 400:
        print(message);

        break;
      case 401:
        print(message);

        break;
      case 404:
        print(message);

        break;
      case 422:
        print(message);

        break;
      case 200:
        print(message);
        break;
    }
  }
}
