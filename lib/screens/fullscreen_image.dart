import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenImage extends StatelessWidget {
  final String imageURL;
  const FullScreenImage({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.black.withOpacity(0.8),
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
          '$imageURL',
          fit: BoxFit.fitWidth,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: accentClr,
              ),
            );
          },
        ),
      ),
      onTap: () {
        Get.back();
      },
    );
  }
}
