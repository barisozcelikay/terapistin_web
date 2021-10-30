import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terapistin_web/constants.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // Another fixed-height child.
        color: const Color(0xffFDF8F5), // Green
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                height: 200,
                color: kMainColor,
                child: AutoSizeText(
                  "Hemen İndir!\nAlanında uzman psikologlar içinde sana en uygun\nolanı seç,Terapiye Başla!",
                  maxLines: 3,
                  minFontSize: 20,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: "Baloo",
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      padding: MediaQuery.of(context).size.width > 500
                          ? EdgeInsets.only(left: 207, top: 70)
                          : EdgeInsets.only(top: 70),
                      alignment: MediaQuery.of(context).size.width > 500
                          ? Alignment.topLeft
                          : Alignment.center,
                      child: AutoSizeText(
                        "Nasıl Çalışır?",
                        style: TextStyle(
                            color: Color(0xff6F6F6F),
                            fontSize: MediaQuery.of(context).size.width > 500
                                ? 50
                                : 40,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height - 430,
                          alignment: Alignment.center,
                          child: Center(
                            child: Flexible(
                              child: FittedBox(
                                child: Image(
                                  image: AssetImage('images/t.png'),
                                ),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
