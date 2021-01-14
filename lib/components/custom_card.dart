import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  Customcard({this.cardSubtitle, this.picture, this.cardStar, this.cardTitle});

  final String picture;
  final String cardTitle;
  final String cardSubtitle;
  final Widget cardStar;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
             
              image: AssetImage(
                picture,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5.0),
            child: Text(
              cardTitle,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              cardSubtitle,
              style: TextStyle(fontSize: 9.0),
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 8.0), child: cardStar),
        ],
      ),
    );
  }
}
