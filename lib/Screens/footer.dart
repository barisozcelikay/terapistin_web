import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:terapistin_web/constants.dart';

const TextStyle footerTextStyle = TextStyle(color: Colors.white);

class FooterScreen extends StatefulWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  _FooterScreenState createState() => _FooterScreenState();
}

class _FooterScreenState extends State<FooterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainColor,
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  Text("Seninle Her Yerde", style: footerTextStyle)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nasıl Çalışır?",
                        style: footerTextStyle,
                      ),
                      Text("Özellikler", style: footerTextStyle),
                      Text("Blog", style: footerTextStyle),
                      Text("Sıkça Sorulan Sorular", style: footerTextStyle),
                      Text("Destek", style: footerTextStyle)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gizlilik Politikamız", style: footerTextStyle),
                        SizedBox(
                          height: 20,
                        ),
                        Text("KVKK Metni", style: footerTextStyle)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.facebook,
                      color: Colors.white, size: 22.0),
                  Icon(FontAwesomeIcons.twitter,
                      color: Colors.white, size: 22.0),
                  Icon(FontAwesomeIcons.linkedin,
                      color: Colors.white, size: 22.0),
                  Icon(FontAwesomeIcons.instagram,
                      color: Colors.white, size: 22.0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
