import 'package:dio/dio.dart';
import 'package:flutsplash/helpers/keys.dart';

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
