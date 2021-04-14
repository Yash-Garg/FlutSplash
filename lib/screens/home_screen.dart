import 'package:flutsplash/helpers/chrome_custom_tabs.dart';
import 'package:flutsplash/main.dart';
import 'package:flutsplash/screens/collection_screen.dart';
import 'package:flutsplash/screens/photos_screen.dart';
import 'package:flutsplash/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final tabs = ["HOME", "COLLECTIONS"];

class _HomePageState extends State<HomePage> {
  bool isLoggedIN = false;
  TextEditingController textController = new TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Widget _buildFab() => new FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.search),
          onPressed: null,
          disabledColor: Colors.white,
          alignment: Alignment.center,
        ),
        onPressed: () =>
            Get.to(SearchScreen(), transition: Transition.cupertinoDialog),
      );

  TabBar _buildTabBar() => new TabBar(
        tabs: [
          for (final tab in tabs)
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  tab,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
        ],
      );

  Widget _buildDrawer() => new Drawer(
        child: Material(
          color: accentClr,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                height: 150,
                child: isLoggedIN
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'FlutSplash',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Image.asset(
                        'images/header.png',
                        fit: BoxFit.cover,
                      ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.solidUserCircle,
                  size: 25,
                ),
                title: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: 22,
                ),
                title: Text(
                  "Rate This App",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {
                  launch(
                      "https://play.google.com/store/apps/details?id=com.yashgarg.flutsplash");
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  size: 25,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {
                  openCustomTab(
                      "https://gistpreview.github.io/?d183948f7bb24383f92688f66155d8b0/privacy-policy.html");
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 25,
                ),
                title: Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {
                  launch("mailto:yashgarg.dev@gmail.com");
                },
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "FlutSplash",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: GoogleFonts.paytoneOne().fontFamily,
                letterSpacing: 1,
              ),
            ),
          ),
          bottom: _buildTabBar(),
          actions: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.github, color: Colors.black),
              disabledColor: Colors.black,
              onPressed: () {
                openCustomTab("https://github.com/Yash-Garg/FlutSplash");
              },
            )
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: _buildDrawer(),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: LatestPhotos(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: LatestCollections(),
            ),
          ],
        ),
        resizeToAvoidBottomInset: true,
        floatingActionButton: _buildFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
