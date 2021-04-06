import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageInfoScreen extends StatefulWidget {
  final Map<String, dynamic> imageDetails;

  ImageInfoScreen({required Map<String, dynamic> imageDetails})
      : this.imageDetails = imageDetails;

  @override
  _ImageInfoScreenState createState() => _ImageInfoScreenState(imageDetails);
}

class _ImageInfoScreenState extends State<ImageInfoScreen> {
  _ImageInfoScreenState(Map<String, dynamic> imageDetails);

  @override
  Widget build(BuildContext context) {
    String webURL = widget.imageDetails['links']['html'];
    String imgURL = widget.imageDetails['urls']['regular'];
    String imgCreator = widget.imageDetails['user']['name'];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.open_in_browser),
                onPressed: () {
                  launch("$webURL");
                }),
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  Share.share("Photo by $imgCreator on Unsplash\n$webURL");
                })
          ],
        ),
        body: Container(
          child: Column(
            children: [
              InkWell(
                child: ClipRRect(
                  child: Image.network(
                    imgURL,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Row(
            children: [
              Icon(Icons.wallpaper),
              Padding(
                child: Text(
                  "SET AS WALLPAPER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(left: 10),
              ),
            ],
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
