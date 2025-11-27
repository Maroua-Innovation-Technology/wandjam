import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wandjam/config/constant.dart';
import 'package:wandjam/config/theme.dart';
import 'package:wandjam/routes/name_page.dart';
import 'package:wandjam/routes/routes.dart';
import 'storage/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  await dotenv.load(fileName: "env/.env");

  runApp(
    GetMaterialApp(
      initialRoute: NamePage.initialRoute,
      theme: ThemeApp.theme(),
      fallbackLocale: const Locale('en', 'US'),
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
    ),
  );
}
