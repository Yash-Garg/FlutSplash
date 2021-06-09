import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:get/get.dart';

import '../../helpers/chrome_custom_tabs.dart';
import '../../helpers/keys.dart';
import '../../models/collection/collection.dart';
import '../shimmer_loading/card_shimmer.dart';

class LatestCollections extends StatefulWidget {
  @override
  _LatestCollectionsState createState() => _LatestCollectionsState();
}

String collectionDataURL =
    'https://api.unsplash.com/collections?client_id=$unsplashApiClientID&per_page=10';

class _LatestCollectionsState extends State<LatestCollections>
    with AutomaticKeepAliveClientMixin<LatestCollections> {
  @override
  bool get wantKeepAlive => true;

  late Future<List<Collection>> collections;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    collections = _getCollections();
  }

  Future<void> _pullToRefreshCollections() async {
    var data = await _getCollections();
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      collections = Future.value(data);
    });
  }

  Future<List<PreviewPhoto>> _fetchCollectionPhotos(String collectionID) async {
    var response = await dio.get(
        'https://api.unsplash.com/collections/$collectionID/photos?client_id=$unsplashApiClientID&per_page=50');
    List<dynamic> collData = response.data;
    return collData.map((d) => PreviewPhoto.fromJson(d)).toList();
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
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: Card(
                      elevation: 3,
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
                                    onTap: () async {
                                      var photosList = await showDialog(
                                        context: context,
                                        builder: (context) =>
                                            FutureProgressDialog(
                                          _fetchCollectionPhotos(coll.id),
                                        ),
                                      );
                                      await Get.toNamed(
                                        '/collection/photos',
                                        arguments: [
                                          photosList,
                                          coll.id,
                                          collCreator,
                                          collectionTitle,
                                        ],
                                      );
                                    },
                                    child: CachedNetworkImage(
                                      imageUrl: coverPhoto,
                                      placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator()),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                      color: Colors.black38,
                                      colorBlendMode: BlendMode.multiply,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    '$collectionTitle\n$collTotalPhotos Photos',
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
                              onTap: () {
                                openCustomTab(collCreatorProfile);
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(collCreatorImage),
                                  radius: 25,
                                  backgroundColor: Colors.transparent,
                                ),
                                title: Text(
                                  '$collCreator (@$collCreatorUsername)',
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
