import 'package:flutter/material.dart';
import 'package:flutter_home_work6/constants/assets_images.dart';

class ImageAssetsContainer extends StatelessWidget {
  const ImageAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              AssetsImages.userPhoto,
              height: 50,
              width: 50,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border(
                  top: BorderSide(color: Colors.indigo, width: 5.0),
                  left: BorderSide(color: Colors.indigo, width: 5.0),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border(
                  right: BorderSide(color: Colors.deepOrange, width: 5.0),
                  bottom: BorderSide(color: Colors.deepOrange, width: 5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}