import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static bool isProd = const bool.fromEnvironment('dart.vm.product');
  static String appName = "Wandjam";
  static String baseUrl =
      isProd ? dotenv.get('PROD_BASE_URL') : dotenv.get('BASE_URL');
}

class Keys {
  static String currentUser = 'user';
  static String lang = 'lang';
  static String fr = "fr";
  static String en = "en";
  static String onbording = "onbording";
  static String langIsSelected = "langIsSelected";
  static String identifier = "identifier";
  static String code = "code";
  static String newpassword = "newpassword";
  static String etablissement = "etablissement";
  static String autre = "Autre";
}

class Images {
  static String logo = 'assets/logo/logo.png';
  static String simpleLogo = 'assets/logo/simple_logo.png';
  static String logoWhiteMode = 'assets/logo/logo_white_mode.png';
  static String onboarding1 = 'assets/image/on_1.png';
  static String onboarding2 = 'assets/image/on_2.png';
  static String onboarding3 = 'assets/image/on_3.png';
  static String motif = 'assets/image/motif.png';
  static String login = 'assets/image/login.png';
  static String rm = 'assets/image/rm.png';
  static String forgetpass = 'assets/image/forgetpass.png';
  static String imageHeader = 'assets/image/image_header.png';
  static String momoLogo = "assets/image/momo.jpeg";
  static String money = "assets/image/money.png";
  static String profil = "assets/image/profil.jpg";
  static String doctor = "assets/image/doc_profil.jpg";
  static String doc1 = "assets/image/doc_1.png";
  static String doc2 = "assets/image/doc_2.png";
  static String professionnels = "assets/image/professional.png";
  static String appBanner = "assets/image/bg_app.jpg";
  static String bgChat = "assets/image/bg_chat.jpg";
  static String orangeMoney = "assets/logo/orange_money.png";
  static String mtnMomo = "assets/logo/mtn_momo.png";
  static String cameroonFlag = "assets/logo/cameroon_flag.png";
  static String defaultAvatar = "assets/logo/avatar.png";
}

class SvgAsset {
  static String logo = 'assets/svg/logo.svg';
  static String facebook = 'assets/svg/facebook.svg';
  static String google = 'assets/svg/google.svg';
  static String finger = 'assets/svg/finger.svg';
  static String setting = 'assets/svg/setting.svg';
  static String notification = 'assets/svg/notification.svg';
  static String photo = 'assets/svg/photo.svg';
  static String stetoscope = 'assets/svg/stetoscope.svg';
  static String favorite = 'assets/svg/favorite.svg';
  static String search = 'assets/svg/search.svg';
  static String tri = 'assets/svg/tri.svg';
  static String eleveur = 'assets/svg/eleveur.svg';
  static String fournisseur = 'assets/svg/fournisseur.svg';
  static String veterinaire = 'assets/svg/veterinaire.svg';
  static String badge = 'assets/svg/badge.svg';
  static String bgChat = 'assets/svg/bg_chat.svg';
}
