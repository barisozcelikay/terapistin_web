// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: 100 //MediaQuery.of(context).size.height,
                ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1),
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: kMainColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: FittedBox(
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
                          //Image.asset('assets/images/logo.png')
                          Flexible(
                            child: FittedBox(
                              child: Image(
                                image: AssetImage('images/terapistin_logo.png'),
                                color: Color(0xffF6AD42).withOpacity(1),
                                width: 51.75,
                                height: 72.6,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: EdgeInsets.only(right: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                print('The button is clicked!');
                              },
                          )),
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
                          )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xffFDF8F5), // Yellow
              child: Container(
                height: MediaQuery.of(context).size.height - 100,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.13,
                          top: 115),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "En Kaliteli ve Güvenilir\nOnline Terapi Hizmeti veren \nTerapistinApp",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.028, //50,

                                  fontFamily: "Montserrat",
                                  color: Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w500,
                                  height: 1.32),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Container(
                            padding: EdgeInsets.only(),
                            child: Text(
                                "Alanında uzman psikologlar içinde \nSana en uygun olanı seç, \nrandevunu oluştur,\nHemen görüşmeye başla!",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff6F6F6F),
                                    height: 1.08)),
                          ),
                          SizedBox(
                            height: 102,
                          ),
                          Text("Hemen İndir !",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff6F6F6F),
                                  height: 1.08)),
                          SizedBox(
                            height: 8,
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Container(
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
                                      image: AssetImage('images/appstore.png'),
                                      width: 200,
                                      height: 123.63,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Container(
                                transform:
                                    Matrix4.translationValues(0.0, -50.0, 0.0),
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
                                      image:
                                          AssetImage('images/googleplay.png'),
                                      width: 200,
                                      height: 123.63,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Container(
                          margin: EdgeInsets.only(left: 240),
                          child: GestureDetector(
                            onTap: () {
                              print("oye");
                            },
                            child: Image(
                              image: AssetImage('images/scroll.png'),
                              height: 700,
                              width: 520,
                            ),
                          ),
                        ),
                      ),
                    )

                    // Telefon Image gelicek
                  ],
                ),
              ),
            ),
            Container(
              // Another fixed-height child.
              color: const Color(0xff008000), // Green
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: const Text('Nasıl Çalışır?'),
            ),
            Container(
              // Another fixed-height child.
              color: const Color(0xffee8000), // Green
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: const Text('Özellikler'),
            ),
            Container(
              // Another fixed-height child.
              color: const Color(0xff440000), // Green
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: const Text('Destek'),
            ),
          ],
        ),
      ),
    ));
  }
}
