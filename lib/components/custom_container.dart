

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {this.botomText,
      this.container,
      this.stars,
      this.subTitle,
      this.title,
      this.image});

  final String title;
  final String subTitle;
  final String botomText;
  final Widget stars;
  final String image;
  final Widget container;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206.0,
      width: 156.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  height: 93.0,
                  width: 136.0,
                  image: AssetImage(image),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
              ),
              Text(
                subTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
              ),
              Text(
                botomText,
                style: TextStyle(fontSize: 9.0),
              ),
              stars,
              container,
            ],
          ),
        ),
      ),
    );
  }
}
