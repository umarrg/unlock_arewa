import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unlock_arewa/constant.dart';
import 'package:unlock_arewa/components/custom_card.dart';
import 'package:unlock_arewa/components/custom_container.dart';
import 'package:unlock_arewa/components/bottom_bar.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xffd0adf8), Color(0xff00ffffff)])),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu_open,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Text(
                            'Unlock Arewa',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 40.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.green,
                              ),
                              suffixIcon: Icon(Icons.keyboard_voice,
                                  color: Colors.green),
                              filled: true,
                              hintText: 'What are you looking for?',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 98.5,
                      child: SvgPicture.asset('images/hero.svg',
                          width: 400, height: 500, fit: BoxFit.contain),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 13.0),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca1.svg',
                                          width: 42.0,
                                        ),
                                        Text(
                                          'Categories',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca6.svg',
                                          width: 42.0,
                                        ),
                                        Text('Vehicles',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 13.0),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca2.svg',
                                          width: 42.0,
                                        ),
                                        Text('Services',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca7.svg',
                                          width: 42.0,
                                        ),
                                        Text('Education',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 13.0),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca3.svg',
                                          width: 42.0,
                                        ),
                                        Text('Jobs',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca8.svg',
                                          width: 42.0,
                                        ),
                                        Text('Restaurant',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 13.0),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca4.svg',
                                          width: 42.0,
                                        ),
                                        Text('House Toilet',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca9.svg',
                                          width: 42.0,
                                        ),
                                        Text('Culture',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 13.0),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca5.svg',
                                          width: 42.0,
                                        ),
                                        Text('Event',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'images/ca10.svg',
                                          width: 42.0,
                                        ),
                                        Text('Travels',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff29000000), blurRadius: 9.0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Most Popular'),
                  ),
                  FlatButton(
                    child: Row(children: [
                      Text(
                        'slide',
                        style: TextStyle(color: UnlockArewa.brandBlue),
                      ),
                      Icon(
                        Icons.chevron_left,
                        color: UnlockArewa.brandBlue,
                      )
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 160.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Customcard(
                          picture: 'images/U10.jpg',
                          cardTitle: 'Romm Self Contained',
                          cardSubtitle: 'Kaduna state',
                          cardStar: Row(
                            children: [
                              Text(
                                '(7.0)',
                                style: TextStyle(fontSize: 11.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(70.0),
                          ),
                        ),
                        height: 160.0,
                        width: 138.0,
                      ),
                      Container(
                        child: Customcard(
                          picture: 'images/U10.jpg',
                          cardTitle: 'Habil Royal rooms',
                          cardSubtitle: 'kawo kaduna',
                          cardStar: GestureDetector(
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xffff61af),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0))),
                              width: 76.0,
                              child: Center(
                                  child: Text(
                                'N70,000',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(70.0),
                          ),
                        ),
                        height: 160.0,
                        width: 138.0,
                      ),
                      Container(
                        child: Customcard(
                          picture: 'images/U10.jpg',
                          cardTitle: 'bitos',
                          cardSubtitle: 'Sokoto State',
                          cardStar: Row(
                            children: [
                              Text(
                                '(7.0)',
                                style: TextStyle(fontSize: 11.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(70.0),
                          ),
                        ),
                        height: 160.0,
                        width: 138.0,
                      ),
                      Container(
                        child: Customcard(
                          picture: 'images/U10.jpg',
                          cardTitle: 'Zaytoon ',
                          cardSubtitle: 'Katsina State',
                          cardStar: Row(
                            children: [
                              Text(
                                '(7.0)',
                                style: TextStyle(fontSize: 11.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(70.0),
                          ),
                        ),
                        height: 160.0,
                        width: 138.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xfff7f7f7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        image: 'images/U10.jpg',
                        title: '2 Bedroom ',
                        subTitle: ' For Rent',
                        botomText: 'zaria nigeria',
                        stars: Container(
                          height: 20.0,
                        ),
                        container: Center(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffff61af),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            width: 76.0,
                            child: Center(
                                child: Text(
                              'N85,000',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      CustomContainer(
                        image: 'images/U10.jpg',
                        title: 'Stuffed Savory Masa',
                        subTitle: ' (Waina)',
                        botomText: 'Hajia kitchen Kaduna',
                        stars: Container(
                          height: 20.0,
                          child: Row(
                            children: [
                              Container(
                                height: 12.0,
                                width: 14.0,
                                child: Center(
                                    child: Text(
                                  '2.5',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 7.0),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.0),
                                  ),
                                  color: Color(0XFF52bd94),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              )
                            ],
                          ),
                        ),
                        container: Center(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffff61af),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            width: 76.0,
                            child: Center(
                                child: Text(
                              'N85,000',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xfff7f7f7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        image: 'images/U10.jpg',
                        title: '2 Bedroom ',
                        subTitle: ' For Rent',
                        botomText: 'zaria nigeria',
                        stars: Container(
                          height: 20.0,
                        ),
                        container: Center(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffff61af),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            width: 76.0,
                            child: Center(
                                child: Text(
                              'N85,000',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      CustomContainer(
                        image: 'images/U10.jpg',
                        title: 'Stuffed Savory Masa',
                        subTitle: ' (Waina)',
                        botomText: 'Hajia kitchen Kaduna',
                        stars: Container(
                          height: 20.0,
                          child: Row(
                            children: [
                              Container(
                                height: 12.0,
                                width: 14.0,
                                child: Center(
                                    child: Text(
                                  '2.5',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 7.0),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.0),
                                  ),
                                  color: Color(0XFF52bd94),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffffb300),
                                size: 12.0,
                              )
                            ],
                          ),
                        ),
                        container: Center(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffff61af),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            width: 76.0,
                            child: Center(
                                child: Text(
                              'N85,000',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotomBar(),
    );
  }
}
