import 'package:dio/dio.dart';
import 'package:flutsplash/models/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
              if (snapshot.hasData)
                return StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      width: MediaQuery.of(context).size.width * 0.50,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(snapshot.data![index].urls.small),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 3 : 1.5),
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                );
              else
                return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
