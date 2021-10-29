import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenTop extends StatelessWidget {
  HomeScreenTop({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
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
                                MediaQuery.of(context).size.width * 0.024),
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
                        fontSize: MediaQuery.of(context).size.width * 0.014),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('The button is clicked!');
                      },
                  )),
                  RichText(
                      text: TextSpan(
                    text: "Özellikler",
                    style: kNavBarTextStyle.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.014),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('The button is clicked!');
                      },
                  )),
                  RichText(
                      text: TextSpan(
                    text: "Destek",
                    style: kNavBarTextStyle.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.014),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('The button is clicked!');
                      },
                  )),
                  /*
                  RichText(
                      text: TextSpan(
                    text: "Blog",
                    style: kNavBarTextStyle.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.014),
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
    );
  }
}
