import 'package:flutsplash/screens/card_shimmer.dart';
import 'package:flutter/material.dart';

class LatestCollections extends StatefulWidget {
  @override
  _LatestCollectionsState createState() => _LatestCollectionsState();
}

class _LatestCollectionsState extends State<LatestCollections>
    with AutomaticKeepAliveClientMixin<LatestCollections> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ShimmerCards();
  }
}
