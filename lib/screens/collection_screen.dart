import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutsplash/helpers/keys.dart';
import 'package:flutsplash/models/collection.dart';
import 'package:flutsplash/screens/card_shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class LatestCollections extends StatefulWidget {
  @override
  _LatestCollectionsState createState() => _LatestCollectionsState();
}

String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
String collectionDataURL =
    "https://api.unsplash.com/collections?client_id=$accessKey&per_page=10";

class _LatestCollectionsState extends State<LatestCollections>
    with AutomaticKeepAliveClientMixin<LatestCollections> {
  @override
  bool get wantKeepAlive => true;

  late Future<List<Collection>> collections;
  Dio dio = new Dio();

  @override
  void initState() {
    super.initState();
    collections = _getCollections();
  }

  Future<void> _pullToRefreshCollections() async {
    List<Collection> data = await _getCollections();
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      collections = Future.value(data);
    });
  }

  Future<List<Collection>> _getCollections() async {
    var response = await dio.get(collectionDataURL);
    List<dynamic> jsonData = response.data;
    return jsonData.map((d) => Collection.fromJson(d)).toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: FutureBuilder(
        future: collections,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return RefreshIndicator(
              onRefresh: _pullToRefreshCollections,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  var coll = snapshot.data[index];
                  var coverPhoto = coll.cover_photo.urls.small;
                  var collCreator = coll.user.name;
                  var collCreatorUsername = coll.user.username;
                  var collectionTitle = coll.title;
                  var collTotalPhotos = coll.total_photos;
                  var collPublishedAt = coll.published_at;
                  var collCreatorProfile = coll.user.links.html;
                  var collCreatorImage = coll.user.profile_image.medium;

                  return Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAlias,
                      child: Ink(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  child: InkWell(
                                    child: Image.network(
                                      "$coverPhoto",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                      color: Colors.black38,
                                      colorBlendMode: BlendMode.multiply,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    "$collectionTitle\n$collTotalPhotos Photos",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage("$collCreatorImage"),
                                  radius: 25,
                                  backgroundColor: Colors.transparent,
                                ),
                                title: Text(
                                  "$collCreator (@$collCreatorUsername)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Published on ${collPublishedAt.toString().split(" ")[0]}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              onTap: () {
                                launch("$collCreatorProfile");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return ShimmerCards();
          }
        },
      ),
    );
  }
}
