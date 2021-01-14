import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unlock_arewa/constant.dart';

class BotomBar extends StatefulWidget {
  @override
  _BotomBarState createState() => _BotomBarState();
}

class _BotomBarState extends State<BotomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.white,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 8.0, top: 8.0),
          child: Row(
          
            children: [
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/home.svg',
                      height: 23.0,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                ),
              ),
              SizedBox(width: 35.0),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/message.svg',
                      height: 23.0,
                    ),
                    Text(
                      'Message',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                ),
              ),
              SizedBox(width: 35.0),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/camera.svg',
                      height: 42.0,
                      
                    ),
                   
                  ],
                ),
              ),
              SizedBox(width: 35.0),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/adashe.svg',
                      height: 23.0,
                    ),
                    Text(
                      'Adashe',
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 35.0),
               Container(
               child: Column(
                 children: [
                   SvgPicture.asset('images/person.svg', height: 23.0, ),
                   Text('Profile', style: TextStyle(fontSize: 10.0),)
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
