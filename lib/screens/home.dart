import 'package:dio/dio.dart';
import 'package:flutsplash/helpers.dart';
import 'package:flutsplash/main.dart';
import 'package:flutsplash/models/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

String accessKey = env['ACCESS_KEY']!;
String apiURL =
    "https://api.unsplash.com/photos/?client_id=$accessKey&per_page=10";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final tabs = ["HOME", "COLLECTIONS"];

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
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              child: Column(
                children: [
                  new TabBar(
                    tabs: [for (final tab in tabs) Tab(text: tab)],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: FutureBuilder(
                  future: _getJsonData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          var imageID = snapshot.data![index].id;
                          var imageDesc = snapshot.data![index].alt_description;
                          var imageCreator =
                              snapshot.data![index].user.first_name;
                          var creatorUsername =
                              snapshot.data![index].user.username;
                          var imageCreatedAt = snapshot.data![index].created_at
                              .toString()
                              .split(" ")[0];
                          var imageHeight = snapshot.data![index].height;
                          var imageWidth = snapshot.data![index].width;
                          var imageLink = snapshot.data![index].urls.regular;
                          var webLink = snapshot.data![index].links.html;
                          var creatorProfile =
                              snapshot.data![index].user.links.html;
                          var userImage =
                              snapshot.data![index].user.profile_image.medium;
                          var rawURL = snapshot.data![index].urls.raw;
                          var imageDownloadLocation =
                              snapshot.data![index].links.download_location;

                          return Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: Ink(
                                color: Color(0xFF2e2e2e),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Image.network("$imageLink"),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launch("$creatorProfile");
                                      },
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage:
                                              NetworkImage("$userImage"),
                                          radius: 25,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        title: Text(
                                          "$imageCreator (@$creatorUsername)",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Uploaded on $imageCreatedAt",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ButtonBar(
                                      alignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 0, 0, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              OutlinedButton(
                                                onPressed: () async {
                                                  Dio dio = new Dio();
                                                  var status =
                                                      await requestPermissions();
                                                  var downloadPath =
                                                      await getPath(
                                                          "$imageID.jpeg");
                                                  if (status == true) {
                                                    await dio.get(
                                                        "$imageDownloadLocation&client_id=$accessKey");
                                                    await downloadFile(
                                                        "$rawURL",
                                                        downloadPath,
                                                        context);
                                                    var snackBar = SnackBar(
                                                      content: Text(
                                                        "Downloaded File ID - $imageID",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 3000),
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    7)),
                                                      ),
                                                      action: SnackBarAction(
                                                        label: 'Open'
                                                            .toUpperCase(),
                                                        onPressed: () {
                                                          OpenFile.open(
                                                              downloadPath);
                                                        },
                                                      ),
                                                    );
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(snackBar);
                                                  }
                                                },
                                                child: Text(
                                                  "DOWNLOAD",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10, right: 10)),
                                              OutlinedButton(
                                                onPressed: () {
                                                  launch("$webLink");
                                                },
                                                child: Text(
                                                  "OPEN ON UNSPLASH",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5)),
                                              IconButton(
                                                icon: Icon(Icons.info_outline),
                                                onPressed: () {
                                                  final AlertDialog infoDialog =
                                                      AlertDialog(
                                                    title: Text(
                                                      'About - $imageID',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    content: Text(
                                                        "Description : $imageDesc\n\nDimensions : $imageWidth X $imageHeight"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          'OK',
                                                          style: TextStyle(
                                                            color: accentClr,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                  Get.dialog(infoDialog);
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              Container(),
            ],
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
              onPressed: null,
              disabledColor: Colors.black,
              alignment: Alignment.center,
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
