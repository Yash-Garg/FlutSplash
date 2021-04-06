import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCards extends StatefulWidget {
  @override
  _ShimmerCardsState createState() => _ShimmerCardsState();
}

class _ShimmerCardsState extends State<ShimmerCards> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      "",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      baseColor: Color(0xFF2e2e2e),
      highlightColor: Colors.grey,
    );
  }
}
