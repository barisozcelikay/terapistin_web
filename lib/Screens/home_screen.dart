import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:terapistin_web/Widgets/home_screen_top.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({
    Key? key,
  }) : super(key: key);

  void _scrollToIndex(int index) {
    controller.animateToPage(index + 1,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Column(
                  mainAxisAlignment: MediaQuery.of(context).size.width <= 500
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: MediaQuery.of(context).size.width <= 500
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AutoSizeText(
                        'En Kaliteli ve Güvenilir\nOnline Terapi Hizmeti veren \nTerapistinApp!',
                        maxFontSize: 50,
                        minFontSize: 30,
                        maxLines: 4,
                        textAlign: MediaQuery.of(context).size.width <= 500
                            ? TextAlign.center
                            : TextAlign.start,
                        style: TextStyle(
                            //50,
                            fontSize: MediaQuery.of(context).size.width * 0.028,
                            fontFamily: "Montserrat",
                            color: Color(0xff6F6F6F),
                            fontWeight: FontWeight.w500,
                            height: 1.32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AutoSizeText(
                        'Alanında uzman psikologlar içinde \nSana en uygun olanı seç, \nrandevunu oluştur,\nHemen görüşmeye başla!!',
                        maxLines: 4,
                        minFontSize: 20,
                        maxFontSize: 40,
                        textAlign: MediaQuery.of(context).size.width <= 500
                            ? TextAlign.center
                            : TextAlign.start,
                        style: TextStyle(
                            //50,
                            fontSize: MediaQuery.of(context).size.width * 0.015,
                            fontFamily: "Montserrat",
                            color: Color(0xff6F6F6F),
                            fontWeight: FontWeight.w300,
                            height: 1.08),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AutoSizeText("Hemen İndir !",
                          maxFontSize: 30,
                          minFontSize: 20,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6F6F6F),
                              height: 1.08)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Material(
                              child: GestureDetector(
                                onTap: () async {
                                  const url =
                                      "https://apps.apple.com/tr/app/terapistin/id1567890765?l=tr";
                                  if (await canLaunch(url))
                                    await launch(url);
                                  else
                                    // can't launch url, there is some error
                                    throw "Could not launch $url";
                                  print("apple");
                                },
                                child: ClipRRect(
                                  child: Image.asset('images/appstore.png',
                                      width: 170),
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Material(
                                child: GestureDetector(
                              onTap: () async {
                                const url =
                                    "https://play.google.com/store/apps/details?id=com.terapistin.terapistin&gl=TR";
                                if (await canLaunch(url))
                                  await launch(url);
                                else
                                  // can't launch url, there is some error
                                  throw "Could not launch $url";
                                print("google");
                              },
                              child: ClipRRect(
                                child: Image.asset(
                                  'images/googleplay.png',
                                  width: 170.0,
                                ),
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: () {
              print(
                  'Size --> Width: ${MediaQuery.of(context).size.width}  Height: ${MediaQuery.of(context).size.height}');
              return MediaQuery.of(context).size.width > 500 ? true : false;
            }(),
            child: Expanded(
              child: SizedBox(
                  child: Image.asset(
                'images/scroll.png',
                height: 700,
                width: 420,
              )),
            ),
          )
        ],
      ),
    );
    /*Container(
      color: const Color(0xffFDF8F5), // Yellow
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 100,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 95),
                      child: Center(
                        child: Column(
                          crossAxisAlignment:
                              MediaQuery.of(context).size.width <= 500
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: AutoSizeText(
                              "En Kaliteli ve Güvenilir\nOnline Terapi Hizmeti veren \nTerapistinApp",
                              maxLines: 4,
                              minFontSize: 30,
                              maxFontSize: 50,
                              textAlign:
                                  MediaQuery.of(context).size.width <= 500
                                      ? TextAlign.center
                                      : TextAlign.start,
                              style: TextStyle(
                                  //50,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.028,
                                  fontFamily: "Montserrat",
                                  color: Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w500,
                                  height: 1.32),
                            )),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                                child: AutoSizeText(
                              "Alanında uzman psikologlar içinde \nSana en uygun olanı seç, \nrandevunu oluştur,\nHemen görüşmeye başla!",
                              maxLines: 4,
                              minFontSize: 20,
                              maxFontSize: 40,
                              textAlign:
                                  MediaQuery.of(context).size.width <= 500
                                      ? TextAlign.center
                                      : TextAlign.start,
                              style: TextStyle(
                                  //50,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
                                  fontFamily: "Montserrat",
                                  color: Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w300,
                                  height: 1.08),
                            )),
                            SizedBox(
                              height: 102,
                            ),
                            AutoSizeText("Hemen İndir !",
                                maxFontSize: 30,
                                minFontSize: 20,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff6F6F6F),
                                    height: 1.08)),
                            SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Container(
                                  transform:
                                      Matrix4.translationValues(0.0, 0.0, 0.0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        const url =
                                            "https://apps.apple.com/tr/app/terapistin/id1567890765?l=tr";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                        print("apple");
                                      },
                                      child: Image(
                                        image:
                                            AssetImage('images/appstore.png'),
                                        width:
                                            MediaQuery.of(context).size.width <=
                                                    500
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.45
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -20.0, 0.0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        const url =
                                            "https://play.google.com/store/apps/details?id=com.terapistin.terapistin&gl=TR";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                        print("google");
                                      },
                                      child: Image(
                                          image: AssetImage(
                                              'images/googleplay.png'),
                                          width:
                                              MediaQuery.of(context)
                                                          .size
                                                          .width <=
                                                      500
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    MediaQuery.of(context).size.width > 500
                        ? Flexible(
                            child: FittedBox(
                              child: Container(
                                margin: EdgeInsets.only(left: 180),
                                child: GestureDetector(
                                  onTap: () {
                                    print("oye");
                                  },
                                  child: Image(
                                    image: AssetImage('images/scroll.png'),
                                    height: 700,
                                    width: 420,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container()

                    // Telefon Image gelicek
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}
