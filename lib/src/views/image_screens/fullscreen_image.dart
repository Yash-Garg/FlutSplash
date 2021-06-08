import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_theme.dart';

class FullScreenImage extends StatelessWidget {
  final String imageURL;
  const FullScreenImage({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
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
    );
  }
}
