import 'package:dio/dio.dart';
import 'package:flutsplash/helpers/keys.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Dio dio = new Dio();
String redirectURI = Keys.REDIRECT_URI;
String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
String scopes = Keys.SCOPES;
String authType = "authorization_code";
String secretKey = Keys.UNSPLASH_API_SECRET_ID;
String accessKeyURL =
    "https://unsplash.com/oauth/token?client_id=$accessKey&client_secret=$secretKey&redirect_uri=$redirectURI&grant_type=$authType&code=";
String AUTH_CODE_URL =
    "https://unsplash.com/oauth/authorize?client_id=$accessKey&redirect_uri=$redirectURI&response_type=code&scope=$scopes";

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("Auth handler opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("Auth handler initial load completed");
  }

  @override
  void onClosed() {
    print("Auth handler closed");
  }
}

final ChromeSafariBrowser browser = new MyChromeSafariBrowser();

getAuthCode() async {
  await browser.open(
    url: Uri.parse("$AUTH_CODE_URL"),
    options: ChromeSafariBrowserClassOptions(
      android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false),
    ),
  );
}

getBearerData(String authKey) async {
  var finalURL = accessKeyURL + authKey;
  var response = await dio.get("$finalURL");
  Map<String, dynamic> bearerData = response.data;
  return bearerData;
}
