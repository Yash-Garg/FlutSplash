import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: GoogleFonts.paytoneOne().fontFamily,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30, top: 3),
                        child: Icon(Icons.star_half),
                      ),
                      Text(
                        "Rate and Review This App",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30, top: 3),
                        child: Icon(Icons.privacy_tip),
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                launch(
                    "https://gistpreview.github.io/?d183948f7bb24383f92688f66155d8b0/privacy-policy.html");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30, top: 3),
                        child: Icon(Icons.info),
                      ),
                      Text(
                        "App Info",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
