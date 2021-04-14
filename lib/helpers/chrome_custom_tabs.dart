import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("Chrome custom tab opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("Chrome custom tab initial load completed");
  }

  @override
  void onClosed() {
    print("Chrome custom tab closed");
  }
}

final ChromeSafariBrowser browser = new MyChromeSafariBrowser();

openCustomTab(String url) async {
  await browser.open(
    url: Uri.parse("$url"),
    options: ChromeSafariBrowserClassOptions(
      android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false),
    ),
  );
}
