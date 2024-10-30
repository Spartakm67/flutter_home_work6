import 'package:flutter/material.dart';
//
// class ImageAssetsContainer extends StatelessWidget {
//     const ImageAssetsContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.redAccent,
//           width: 5.0,
//         ),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Image.asset(
//         'assets/images/profile_image.webp',
//         height: 200,
//         width: 200,
//       ),
//     );
//   }
// }

class ImageAssetsContainer extends StatelessWidget {
  const ImageAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border(
                  top: BorderSide(color: Colors.blue, width: 5.0),
                  left: BorderSide(color: Colors.blue, width: 5.0),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border(
                  right: BorderSide(color: Colors.yellow, width: 5.0),
                  bottom: BorderSide(color: Colors.yellow, width: 5.0),
                ),
              ),
            ),
          ),
          // Контейнер для зображення
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              'assets/images/profile_image.webp',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}