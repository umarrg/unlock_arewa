library flutteronboardingscreens;

import 'package:unlock_arewa/constant.dart';
import 'package:unlock_arewa/components/welcom_screen_data.dart';
import 'package:flutter/material.dart';


class IntroScreen extends StatefulWidget {
  final List<WelcomeData> welcomeDataList;
  final MaterialPageRoute pageRoute;
  IntroScreen(this.welcomeDataList, this.pageRoute);

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute);
  }

  @override
  IntroScreenState createState() {
    return new IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.welcomeDataList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: page == currentPage ? 10.0 : 6.0,
      width: page == currentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: page == currentPage
            ? UnlockArewa.brandBlue
            : UnlockArewa.smoothGray,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 50),
            new Expanded(
              flex: 3,
              child: new PageView(
                physics: BouncingScrollPhysics(), 
                children: widget.welcomeDataList,
                controller: controller,
                onPageChanged: _onPageChanged,
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new FlatButton(
                    child: new Text(lastPage ? "" : "SKIP",
                        style: new TextStyle(
                            color: UnlockArewa.outwitBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    onPressed: () => lastPage
                        ? null
                        : widget.skipPage(
                            context,
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      child: Row(
                        children: [
                          _buildPageIndicator(0),
                          _buildPageIndicator(1),
                          _buildPageIndicator(2),
                          _buildPageIndicator(3),
                          _buildPageIndicator(4),
                          _buildPageIndicator(5),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    child: new Text(lastPage ? "DONE" : "NEXT",
                        style: new TextStyle(
                            color: UnlockArewa.outwitBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    onPressed: () => lastPage
                        ? widget.skipPage(context)
                        : controller.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}