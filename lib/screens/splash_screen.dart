import 'dart:async';
import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Get.offAllNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: accentClr),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "FlutSplash",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                      Spacer(flex: 2),
                      CircularProgressIndicator(),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
