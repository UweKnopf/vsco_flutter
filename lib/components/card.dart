import 'dart:ui';

import 'package:flutter/material.dart';

class PicCard extends StatelessWidget {
  const PicCard({
    super.key,
    required this.picture,
    required this.profilepicture,
  });

  final AssetImage picture;
  final AssetImage profilepicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('/images/vsco_052823.jpg'),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
