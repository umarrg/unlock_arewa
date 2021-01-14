import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unlock_arewa/constant.dart';
import 'package:unlock_arewa/screens/home.dart';
import 'package:unlock_arewa/screens/signup.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.0),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: SvgPicture.asset('images/welcome1.svg'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Login',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 2.0,
              color: UnlockArewa.brandBlue,
              width: 164.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(color: Color(0xff808080), fontSize: 17.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 35.0,
                    width: 90.0,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(children: [
                        SvgPicture.asset('images/naija.svg', height: 14.0,),
                        SizedBox(width: 5.0),
                        Text('+234',style: TextStyle(color: Color(0xff808080), fontSize: 12.0),),
                        Icon(Icons.arrow_drop_down),
                      ],),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Color(0xff29000000), blurRadius: 7.0),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 35.0,
                    width: 228.0,
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Enter a phone number')),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Color(0xff29000000), blurRadius: 7.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text('Enter your Password',
                    style: TextStyle(color: Color(0xff808080), fontSize: 17.0))
              ]),
            ),
            Row(
              children: [
                SizedBox(width: 10.0),
                Container(
                  height: 35.0,
                  width: 327.0,
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintText: '6 digit')),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Color(0xff29000000), blurRadius: 7.0),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  autofocus: true,
                  value: false,
                ),
                Text(
                  'Remember Password',
                  style: TextStyle(color: Color(0xff808080)),
                ),
                SizedBox(
                  width: 25.0,
                ),
                FlatButton(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: UnlockArewa.brandBlue),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        height: 45.0,
                        color: UnlockArewa.brandBlue,
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45.0,
                      color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(width: 10.0),
                          Icon(CommunityMaterialIcons.google,
                              color: Colors.white),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Text(
                              'Login with Google ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              child: Text(
                'Sign Up',
                style: TextStyle(color: UnlockArewa.brandBlue),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            )
          ],
        ),
      ),
    ));
  }
}
