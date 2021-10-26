import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                height: 300,
                color: Color(0xffFE720F),
                child: Text(
                  "Hemen İndir!\nAlanında uzman psikologlar içinde sana en uygun\nolanı seç,Terapiye Başla!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
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
                      padding: EdgeInsets.only(left: 207, top: 70),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nasıl Çalışır?",
                        style: TextStyle(
                            color: Color(0xff6F6F6F),
                            fontSize: 50,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 430,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              "3",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
