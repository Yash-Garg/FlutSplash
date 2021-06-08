import 'package:flutter_inappwebview/flutter_inappwebview.dart';

final ChromeSafariBrowser browser = ChromeSafariBrowser();

Future openCustomTab(String url) async {
  await browser.open(
    url: Uri.parse(url),
    options: ChromeSafariBrowserClassOptions(
      android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false),
    ),
  );
}
