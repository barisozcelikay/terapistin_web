import 'package:auto_size_text/auto_size_text.dart';
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
      appBar: MediaQuery.of(context).size.width > 550
          ? AppBar(
              toolbarHeight: 100,
              backgroundColor: kMainColor,
              actions: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          _scrollToIndex(0);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "terapistin",
                              style: kNavBarTextStyle.copyWith(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.030),
                            ),
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset('images/terapistin_logo.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _scrollToIndex(1);
                              },
                              child: const AutoSizeText(
                                "Nasıl Çalışır?",
                                minFontSize: 12,
                                maxLines: 2,
                                style: kNavBarTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _scrollToIndex(2);
                              },
                              child: const AutoSizeText(
                                "Özellikler",
                                minFontSize: 12,
                                maxLines: 1,
                                style: kNavBarTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _scrollToIndex(3);
                              },
                              child: const AutoSizeText(
                                "Destek",
                                minFontSize: 12,
                                maxLines: 1,
                                style: kNavBarTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : AppBar(
              backgroundColor: kMainColor,
              actions: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "terapistin",
                            style: kNavBarTextStyle.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0110),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset('images/terapistin_logo.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
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
      ), /*SingleChildScrollView(
        child: SingleChildScrollView(
          controller: controller,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Flex(direction: Axis.vertical, children: [
              Container(),
              () {
                switch (_index) {
                  case 0:
                    return HomeScreenBody();
                    break;
                  case 1:
                    return HowItWorks();

                    break;
                  case 2:
                    return Features();

                    break;
                  case 3:
                    return Container(
                      child: Support(
                        key: Key("Supoort"),
                      ),
                    );
                    break;
                }
              }(),
            ]),
          ),
        ),
      ),*/
      /*body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: kMainColor,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          _scrollToIndex(0);
                        },
                        child: Container(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <=
                                                  500
                                              ? MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.10
                                              : MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.030),
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
                                      image: AssetImage(
                                          'images/terapistin_logo.png'),
                                      color: Color(0xffF6AD42).withOpacity(1),
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    MediaQuery.of(context).size.width > 500
                        ? Expanded(
                            flex: 2,
                            child: Container(
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  RichText(
                                      text: TextSpan(
                                    text: "    ",
                                  )),
                                  RichText(
                                      text: TextSpan(
                                    text: "Nasıl Çalışır?",
                                    style: kNavBarTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.018),
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
                                            MediaQuery.of(context).size.width *
                                                0.018),
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
                                            MediaQuery.of(context).size.width *
                                                0.018),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        _scrollToIndex(3);
                                        print('The button is clicked!');
                                      },
                                  )),
                                ],
                              ),
                            ),
                          )
                        : Container()
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
            ],
          ),
        )*/
    );
  }
}
