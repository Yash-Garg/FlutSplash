import 'package:flutsplash/helpers/keys.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

String redirectURI = "urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob";
String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
String scopes =
    "public+read_user+write_user+read_photos+write_photos+write_likes+write_followers+read_collections+write_collections";
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
