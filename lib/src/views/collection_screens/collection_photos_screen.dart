import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../helpers/chrome_custom_tabs.dart';
import '../../helpers/keys.dart';
import '../../models/collection/collection.dart';
import '../image_screens/image_info_screen.dart';

class CollectionPhotos extends StatefulWidget {
  final List<PreviewPhoto> photos;
  final String collectionID;
  final String userName;
  final String coll;

  CollectionPhotos({
    required List<PreviewPhoto> photos,
    required String collectionID,
    required String userName,
    required String coll,
  })  : photos = photos,
        collectionID = collectionID,
        userName = userName,
        coll = coll;

  @override
  _CollectionPhotosState createState() =>
      _CollectionPhotosState(photos, collectionID, userName, coll);
}

class _CollectionPhotosState extends State<CollectionPhotos> {
  Dio dio = Dio();
  _CollectionPhotosState(List<PreviewPhoto> photos, String collectionID,
      String userName, String coll);

  Future<Map<String, dynamic>> _getCollResultDetail(String imageID) async {
    var response = await dio.get(
        'https://api.unsplash.com/photos/$imageID?client_id=$unsplashApiClientID');
    Map<String, dynamic> imageData = response.data;
    return imageData;
  }

  @override
  Widget build(BuildContext context) {
    var photosList = widget.photos;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.coll}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.open_in_new_rounded),
            onPressed: () {
              openCustomTab(
                  'https://unsplash.com/collections/${widget.collectionID}');
            },
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: StaggeredGridView.countBuilder(
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.50,
                  margin: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () async {
                      var imgID = photosList[index].id!;
                      var resultDetails = await _getCollResultDetail(imgID);
                      await Get.to(
                        () => ImageInfoScreen(imageDetails: resultDetails),
                        transition: Transition.cupertinoDialog,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage('${photosList[index].urls.small}'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 3 : 1.5),
              shrinkWrap: true,
              itemCount: photosList.length,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              crossAxisCount: 4,
            ),
          ),
        ),
      ),
    );
  }
}
