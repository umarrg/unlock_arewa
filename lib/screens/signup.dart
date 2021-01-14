import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:unlock_arewa/constant.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
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
              'Sign Up',
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
                Text('Enter OTP',
                    style: TextStyle(color: Color(0xff808080), fontSize: 17.0))
              ]),
            ),
            Row(
              children: [
                SizedBox(width: 10.0),
                Container(
                  height: 35.0,
                  width: 228.0,
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
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 35.0,
                  width: 90.0,
                  child: FlatButton(
                      child: Text('Get OTP',
                          style: TextStyle(color: UnlockArewa.brandBlue))),
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
                FlatButton(
                  child: Text('OTP was obtained by USSD',
                      style: TextStyle(color: UnlockArewa.brandBlue)),
                )
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
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {},
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
                              'Sign UP with Google ',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('By creating an account you agree to UnlockArewa'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terms of Service',
                  style: TextStyle(color: UnlockArewa.brandBlue),
                ),
                SizedBox(width: 5.0),
                Text('and'),
                SizedBox(width: 5.0),
                Text(
                  'Privacy Policy',
                  style: TextStyle(color: UnlockArewa.brandBlue),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
