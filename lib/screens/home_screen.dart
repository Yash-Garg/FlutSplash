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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              disabledColor: Colors.black,
              onPressed: null,
            ),
            title: Center(
              child: Text(
                "FlutSplash",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
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
                  launch("https://github.com/Yash-Garg/FlutSplash");
                },
              )
            ],
          ),
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
      ),
    );
  }
}
