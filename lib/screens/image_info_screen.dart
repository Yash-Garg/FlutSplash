import 'package:flutsplash/models/photo.dart';
import 'package:flutter/material.dart';

class ImageInfoScreen extends StatefulWidget {
  final List<Photo> images;
  final int id;
  ImageInfoScreen({required List<Photo> images, required int id})
      : this.images = images,
        this.id = id;
  @override
  _ImageInfoScreenState createState() => _ImageInfoScreenState(images, id);
}

class _ImageInfoScreenState extends State<ImageInfoScreen> {
  _ImageInfoScreenState(List<Photo> images, int id);

  @override
  Widget build(BuildContext context) {
    var index = widget.id;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.open_in_browser), onPressed: () {}),
            IconButton(icon: Icon(Icons.share), onPressed: () {})
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Image.network(widget.images[index].urls.regular),
              ListTile(
                title: Text("Created At : ${widget.images[index].created_at}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
