import 'package:flutter/material.dart';

class PicCard extends StatefulWidget {
  const PicCard({
    super.key,
    //this.cardType = 'FeedMobile', //FeedMobile,
    //required this.picture,
    //this.profilepicture,
  });

  @override
  State<PicCard> createState() => _PicCardState();
}

class _PicCardState extends State<PicCard> {
  bool favSelected = false;
  bool reshareSelected = false;
  bool standardSelected = false;

  //final String cardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      //color: Colors.blueAccent,

      child: Column(
        children: [
          Image.asset('/images/vsco_052823.jpg'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                  ),
                  const SizedBox(
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
                  IconButton(
                    isSelected: favSelected,
                    icon: Icon(favSelected ? Icons.star : Icons.star_border),
                    //selectedIcon: const Icon(Icons.star_border_outlined),
                    onPressed: () {
                      setState(() {
                        favSelected = !favSelected;
                      });
                    },
                  ),
                  IconButton(
                      isSelected: reshareSelected,
                      onPressed: () {
                        setState(() {
                          reshareSelected = !reshareSelected;
                        });
                      },
                      icon: Icon(
                          reshareSelected ? Icons.repeat_on : Icons.repeat)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.ios_share)),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
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
