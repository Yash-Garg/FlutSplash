import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:share/share.dart';

import '../../helpers/chrome_custom_tabs.dart';
import '../../helpers/download_manager.dart';
import '../../helpers/keys.dart';
import '../../helpers/path_manager.dart';
import '../../helpers/permission_manager.dart';
import '../../models/photo_details/photo_details.dart';
import 'fullscreen_image.dart';

class ImageInfoScreen extends StatefulWidget {
  final Map<String, dynamic> imageDetails;

  ImageInfoScreen({required Map<String, dynamic> imageDetails})
      : imageDetails = imageDetails;

  @override
  _ImageInfoScreenState createState() => _ImageInfoScreenState(imageDetails);
}

class _ImageInfoScreenState extends State<ImageInfoScreen> {
  _ImageInfoScreenState(Map<String, dynamic> imageDetails);

  @override
  Widget build(BuildContext context) {
    var dio = Dio();
    var data = PhotoDetails.fromJson(widget.imageDetails);

    // EXIF Data
    var cameraModel = data.exif!.model ?? 'Unknown';
    var exposureTime = data.exif!.exposure_time ?? 'Unknown ';
    var aperture = data.exif!.aperture ?? 'Unknown ';
    var focalLength = data.exif!.focal_length ?? 'Unknown ';
    var iso = data.exif!.iso ?? 'Unknown ';

    var webURL = data.links!.html;
    var imgURL = data.urls!.small;
    var rawImgURL = data.urls!.raw;
    var imgID = data.id;
    var imgCreator = data.user!.name;
    var downloadEndpoint = data.links!.download_location;
    var creatorPic = data.user!.profile_image.medium;
    var imageHeight = data.height;
    var imageWidth = data.width;
    var likes = data.likes;
    var views = data.views;
    var downloads = data.downloads;

    Future checkImage(String id) async {
      var imagePath = await getPath('$id.jpeg');
      var result = await io.File(imagePath).exists();
      return result;
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.open_in_browser),
            onPressed: () {
              openCustomTab('$webURL');
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share('Photo by $imgCreator on Unsplash\n$webURL');
            },
          )
        ],
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        brightness: Brightness.dark,
        elevation: 0.0,
      ),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => FullScreenImage(imageURL: rawImgURL));
              },
              child: ClipRRect(
                child: Image.network(
                  imgURL,
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  color: Colors.black26,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('$creatorPic'),
                              radius: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Expanded(
                              child: Text(
                                '$imgCreator',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.download_outlined,
                              size: 25,
                            ),
                            onPressed: () async {
                              var status = await requestPermissions();
                              var downloadPath = await getPath('$imgID.jpeg');
                              if (status == true) {
                                await dio.get(
                                    '$downloadEndpoint&client_id=$unsplashApiClientID');
                                await downloadFile(
                                    rawImgURL, downloadPath, context);
                                await Fluttertoast.showToast(
                                  msg: 'Downloaded $imgID.jpeg',
                                  toastLength: Toast.LENGTH_LONG,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.4),
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                              }
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Camera')),
                            subtitle: Center(child: Text('$cameraModel')),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Aperture')),
                            subtitle: Center(child: Text('f/$aperture')),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Focal Length')),
                            subtitle: Center(child: Text('${focalLength}mm')),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Shutter Speed')),
                            subtitle: Center(child: Text('${exposureTime}s')),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('ISO')),
                            subtitle: Center(child: Text('${iso.toString()}')),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Dimensions')),
                            subtitle: Center(
                                child: Text(
                                    '${imageWidth.toString()} x ${imageHeight.toString()}')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Views')),
                            subtitle: Center(child: Text('$views')),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Downloads')),
                            subtitle: Center(child: Text('$downloads')),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Center(child: Text('Likes')),
                            subtitle: Center(child: Text('$likes')),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Row(
          children: [
            Icon(Icons.wallpaper),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'OPEN IN GALLERY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        onPressed: () async {
          var imgExist = await checkImage('$imgID');
          var status = await requestPermissions();
          var filePath = await getPath('$imgID.jpeg');
          if (imgExist == true) {
            print(filePath);
            await OpenFile.open('$filePath');
          } else if (status == true) {
            await dio.get('$downloadEndpoint&client_id=$unsplashApiClientID');
            await downloadFile(rawImgURL, filePath, context);
            await Fluttertoast.showToast(
              msg: 'Downloaded $imgID.jpeg',
              toastLength: Toast.LENGTH_LONG,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black.withOpacity(0.4),
              textColor: Colors.white,
              fontSize: 16.0,
            );
            await OpenFile.open('$filePath');
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
