import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:terapistin_web/Screens/footer.dart';
import 'package:terapistin_web/Widgets/home_screen_top.dart';

import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'Screens/features_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/how_it_works_screen.dart';
import 'Screens/support_screen.dart';

class WebSite extends StatefulWidget {
  @override
  _WebSiteState createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
  PageController controller = PageController();

  var page_list = [
    HomeScreenBody(),
    HowItWorks(),
    Features(),
    Support(),
    //FooterScreen()
  ];

  int _index = 0;

  void _scrollToIndex(int index) {
    setState(() {
      _index = index;
    });
    controller.animateToPage(
      index,
      duration: Duration(seconds: 4),
      curve: Curves.elasticOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: kMainColor,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      _scrollToIndex(0);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "terapistin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Fidena",
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.024),
                                ),
                              ),
                            ),
                          ),
                          //Image.asset('assets/images/logo.png')
                          Flexible(
                            child: FittedBox(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Image(
                                  image:
                                      AssetImage('images/terapistin_logo.png'),
                                  color: Color(0xffF6AD42).withOpacity(1),
                                  width: 51.75,
                                  height: 72.6,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.only(right: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        RichText(
                            text: TextSpan(
                          text: "Nasıl Çalışır?",
                          style: kNavBarTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.014),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _scrollToIndex(1);
                              print('The button is clicked!');
                            },
                        )),
                        RichText(
                            text: TextSpan(
                          text: "Özellikler",
                          style: kNavBarTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.014),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _scrollToIndex(2);
                              print('The button is clicked!');
                            },
                        )),
                        RichText(
                            text: TextSpan(
                          text: "Destek",
                          style: kNavBarTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.014),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _scrollToIndex(3);
                              print('The button is clicked!');
                            },
                        )),
                        /*
                        RichText(
                            text: TextSpan(
                          text: "Blog",
                          style: kNavBarTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.014),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('The button is clicked!');
                            },
                        )),*/
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              controller: controller,
              children: List.generate(page_list.length, (index) {
                setState(() {
                  _index = index;
                });
                return page_list[index];
              }),
            ),
          ),
          //index == 3 ? FooterScreen() : SizedBox()
          /*
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 100 //MediaQuery.of(context).size.height,
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeScreenTop(),
                  HomeScreenBody(),
                  HowItWorks(),
                  Features(),
                  Support(),
                  FooterScreen(),
                ],
              ),
            ),
          ),
          */
        ],
      ),
    ));
  }
}
