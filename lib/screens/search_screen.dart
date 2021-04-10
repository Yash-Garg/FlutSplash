import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget buildFloatingSearchBar() {
    return FloatingSearchBar(
      hint: 'Search photos...',
      scrollPadding: const EdgeInsets.only(top: 25, bottom: 25),
      transitionDuration: const Duration(milliseconds: 200),
      debounceDelay: const Duration(milliseconds: 200),
      onQueryChanged: (query) {
        print(query);
      },
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        // TODO: Yet to implement
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFf2e6df),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: buildFloatingSearchBar(),
          ),
        ],
      ),
    );
  }
}
