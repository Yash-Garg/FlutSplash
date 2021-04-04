import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

String accessKey = "";
String apiURL = "https://api.unsplash.com/photos/?client_id=$accessKey";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getJSON() async {
    Dio dio = new Dio();
    var response = await dio.get(apiURL);
    print(response.data[0]); // for checking output
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Center(
            child: Text("FlutSplash",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
      ),
      body: new Center(
        child: new OutlinedButton(
            child: new Text("Send Request",
                style: TextStyle(fontSize: 20, color: Colors.black)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () async {
              await getJSON();
            }),
      ),
    );
  }
}
