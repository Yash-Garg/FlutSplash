import 'package:flutsplash/screens/collection_screen.dart';
import 'package:flutsplash/screens/photos_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final tabs = ["HOME", "COLLECTIONS"];

class _HomePageState extends State<HomePage> {
  Widget _buildFab() => new FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: null,
          disabledColor: Colors.black,
          alignment: Alignment.center,
        ),
        onPressed: () {},
      );

  Widget _buildBottomAppBar() => new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              padding: EdgeInsets.all(15),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              padding: EdgeInsets.all(15),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              child: Column(
                children: [
                  new TabBar(
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
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              LatestPhotos(),
              LatestCollections(),
            ],
          ),
          resizeToAvoidBottomInset: true,
          bottomNavigationBar: _buildBottomAppBar(),
          floatingActionButton: _buildFab(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
