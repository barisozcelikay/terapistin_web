// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        toolbarTextStyle: kNavBarTextStyle,
        backgroundColor: kMainColor,
        title: Container(
          padding: EdgeInsets.only(left: 200),
          child: Row(
            children: [
              Text(
                "terapistin",
                style: TextStyle(fontFamily: "Fidena", fontSize: 40),
              ),
              //Image.asset('assets/images/logo.png')
              Image(image: AssetImage('images/logo.png'))
            ],
          ),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: RichText(
                        text: TextSpan(
                  text: "Ana Sayfa",
                  style: kNavBarTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('The button is clicked!');
                    },
                ))),
                Expanded(
                    child: RichText(
                        text: TextSpan(
                  text: "Nasıl Çalışır?",
                  style: kNavBarTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('The button is clicked!');
                    },
                ))),
                Expanded(
                    child: RichText(
                        text: TextSpan(
                  text: "Özellikler",
                  style: kNavBarTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('The button is clicked!');
                    },
                ))),
                Expanded(
                    child: RichText(
                        text: TextSpan(
                  text: "Destek",
                  style: kNavBarTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('The button is clicked!');
                    },
                ))),
                Expanded(
                    child: RichText(
                        text: TextSpan(
                  text: "Blog",
                  style: kNavBarTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('The button is clicked!');
                    },
                ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
