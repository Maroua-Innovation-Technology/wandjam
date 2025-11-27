import '../../config/constant.dart';

class Host {
  static String host = Constants.baseUrl;
  Map<String, String> headerWithoutAutorization = {
    'Accept': 'application/json',
    'offset-timezone':
        ((DateTime.now().timeZoneOffset.isNegative ? -1 : 1) *
                DateTime.now().timeZoneOffset.inHours)
            .toString(),
  };
  static Uri baseUrl({String? endpoint}) => Uri.parse("$host/api/$endpoint");
  static String baseStringUrl({String? endpoint}) => "$host/api/$endpoint";

  Map<String, String> headers(String bearer) => {
    "Accept": "application/json",
    "Authorization": "Bearer $bearer",
  };

 

  static String campayUrl = "https://demo.campay.net/api";
  static String initPaymentUrl = "https://initpayment-u6dcz2a4zq-uc.a.run.app";
}
