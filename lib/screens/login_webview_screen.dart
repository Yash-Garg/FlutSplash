import 'package:dio/dio.dart';
import 'package:flutsplash/helpers/keys.dart';
import 'package:flutsplash/models/access_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

Dio dio = new Dio();
String redirectURI = Keys.REDIRECT_URI;
String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
String scopes = Keys.SCOPES;
String secretKey = Keys.UNSPLASH_API_SECRET_ID;
String authType = "authorization_code";
String accessKeyURL =
    "https://unsplash.com/oauth/token?client_id=$accessKey&client_secret=$secretKey&redirect_uri=$redirectURI&grant_type=$authType&code=";
String AUTH_CODE_URL =
    "https://unsplash.com/oauth/authorize?client_id=$accessKey&redirect_uri=$redirectURI&response_type=code&scope=$scopes";

getUserAccessToken(String code) async {
  String finalURL = accessKeyURL + code;
  var response = await dio.get('$finalURL');
  Map<String, dynamic> bearerData = response.data;
  AccessToken userKeys = AccessToken.fromJson(bearerData);
  return userKeys;
}

class LoginWebview extends StatefulWidget {
  @override
  _LoginWebviewState createState() => _LoginWebviewState();
}

class _LoginWebviewState extends State<LoginWebview> {
  InAppWebViewController? webViewController;

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Connect FlutSplash + Unsplash",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse("$AUTH_CODE_URL")),
                onWebViewCreated: (InAppWebViewController controller) {
                  webViewController = controller;
                },
                onLoadStop: (controller, url) async {
                  String? AUTH_CODE = url!.queryParameters['code'];

                  if (AUTH_CODE != null) {
                    await getUserAccessToken(AUTH_CODE);
                    Get.back();
                  } else {
                    return;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
