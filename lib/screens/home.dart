import 'package:dio/dio.dart';
import 'package:flutsplash/models/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

String accessKey = env['ACCESS_KEY']!;
String apiURL =
    "https://api.unsplash.com/photos/?client_id=$accessKey&per_page=20";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _getJsonData() async {
    Dio dio = new Dio();
    var response = await dio.get(apiURL);
    List<dynamic> jsonData = response.data;
    List<Photo> imageList = jsonData.map((d) => Photo.fromJson(d)).toList();
    return imageList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "FlutSplash",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        body: Container(
          child: FutureBuilder(
            future: _getJsonData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    var imageID = snapshot.data![index].id;
                    var imageDesc = snapshot.data![index].alt_description;
                    var imageCreator = snapshot.data![index].user.first_name;
                    var creatorUsername = snapshot.data![index].user.username;
                    var imageCreatedAt = snapshot.data![index].created_at;
                    var imageHeight = snapshot.data![index].height;
                    var imageWidth = snapshot.data![index].width;
                    var webLink = snapshot.data![index].links.html;

                    return InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.75,
                        width: MediaQuery.of(context).size.width * 0.50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage(snapshot.data![index].urls.small),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onTap: () {
                        final AlertDialog infoDialog = AlertDialog(
                          title: Text(
                            'About - $imageID',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: Text(
                              "Photo by $imageCreator (@$creatorUsername on Unsplash)\n\nDescription: $imageDesc\n\nCreated At : $imageCreatedAt\n\nDimensions : $imageWidth X $imageHeight"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                launch("$webLink");
                              },
                              child: Text(
                                'OPEN ON UNSPLASH',
                                style: TextStyle(
                                  color: Color(0xFF3690ff),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                'OK',
                                style: TextStyle(
                                  color: Color(0xFF3690ff),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                        Get.dialog(infoDialog);
                      },
                    );
                  },
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 3 : 1.5),
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: new BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  padding: EdgeInsets.all(15)),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  padding: EdgeInsets.all(15)),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: IconButton(
            icon: Icon(Icons.add),
            iconSize: 40,
            onPressed: null,
            disabledColor: Colors.white,
            alignment: Alignment.center,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
