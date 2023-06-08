import 'dart:ui';

import 'package:flutter/material.dart';

class PicCard extends StatelessWidget {
  const PicCard({
    super.key,
    //this.cardType = 'FeedMobile', //FeedMobile,
    //required this.picture,
    //this.profilepicture,
  });
  //final String cardType;
  //final AssetImage picture;
  //final AssetImage profilepicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      //color: Colors.blueAccent,

      child: Column(
        children: [
          Image.asset('/images/vsco_052823.jpg'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return const Color(0xFF737373);
                      }),
                    ),
                    child: const Text(
                      'User',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.repeat)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class PicCardOnlyName extends StatelessWidget {
  const PicCardOnlyName({
    super.key,
    //this.cardType = 'FeedMobile', //FeedMobile,
    //required this.picture,
    //this.profilepicture,
  });
  //final String cardType;
  //final AssetImage picture;
  //final AssetImage profilepicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      //color: Colors.blueAccent,

      child: Column(
        children: [
          Image.asset('/images/vsco_052823.jpg'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return const Color(0xFF737373);
                  }),
                ),
                child: const Text(
                  'User',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
