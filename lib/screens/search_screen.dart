import 'package:dio/dio.dart';
import 'package:flutsplash/helpers/keys.dart';
import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
  TextEditingController searchController = new TextEditingController();
  Dio dio = new Dio();
  var searchResults;

  Future _getSearchResults(String query) async {
    String searchURL =
        "https://api.unsplash.com/search/photos?query=$query&client_id=$accessKey";
    var response = await dio.get(searchURL);
    Map<String, dynamic> searchData = response.data;
    return searchData;
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search images...",
                border: InputBorder.none,
              ),
            ),
          ),
          InkWell(onTap: () {}, child: Container(child: Icon(Icons.search)))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentClr,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Search Page",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.black,
              fontFamily: GoogleFonts.paytoneOne().fontFamily,
              letterSpacing: 1,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 16),
              _buildSearchBar(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
