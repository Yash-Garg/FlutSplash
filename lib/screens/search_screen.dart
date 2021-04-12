import 'package:dio/dio.dart';
import 'package:flutsplash/helpers/keys.dart';
import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String accessKey = Keys.UNSPLASH_API_CLIENT_ID;
  late TextEditingController searchController;
  var searchResults;
  late bool hasResults;
  bool isSubmitted = false;
  Dio dio = new Dio();

  Future _getSearchResults(String query) async {
    String searchURL =
        "https://api.unsplash.com/search/photos?query=$query&client_id=$accessKey&per_page=20";
    var response = await dio.get(searchURL);
    Map<String, dynamic> searchData = response.data;
    return searchData;
  }

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget _noResults(String input) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          input,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.search),
              ),
              Expanded(
                child: TextField(
                  cursorColor: Colors.black,
                  cursorHeight: 20,
                  autofocus: true,
                  enableSuggestions: true,
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search images...",
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) async {
                    searchResults = await _getSearchResults(value);
                    setState(() {
                      if (searchResults["total"] == 0) {
                        hasResults = false;
                      } else {
                        hasResults = true;
                      }
                      isSubmitted = true;
                    });
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    isSubmitted = false;
                    searchController.clear();
                  });
                  ;
                },
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: isSubmitted
                ? _buildSearchResultList()
                : _noResults("It's too empty here..")),
      ],
    );
  }

  Widget _buildSearchResultList() {
    var data = searchResults["results"];

    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: hasResults
            ? StaggeredGridView.countBuilder(
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width * 0.50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("${data[index]['urls']['small']}"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 3 : 1.5),
                shrinkWrap: true,
                itemCount: data.length,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                crossAxisCount: 4,
              )
            : _noResults('No Results Found !'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentClr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 16),
                _buildSearchBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
