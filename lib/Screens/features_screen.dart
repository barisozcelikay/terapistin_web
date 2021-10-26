import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // Another fixed-height child.
        color: const Color(0xffffffff), // Green
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                padding: EdgeInsets.only(left: 207, top: 81),
                alignment: Alignment.topLeft,
                child: Text(
                  "Özellikler",
                  style: TextStyle(
                      color: Color(0xff6F6F6F),
                      fontSize: 50,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image(
                        width: 1200,
                        height: 750,
                        image: AssetImage(
                          'images/twophones.png',
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Terapistin’i Google play veya App Store üzerinden\nindirebilir,\nTerapistini seçtikten sonra randevunu oluşturup,\ngörüşmeye hemen başlayabilirsin!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                          ),
                          Container(
                            child: Text(
                              "Terapistin seninle her yerde!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 93.6,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Feature_Box(
                                    sentence:
                                        "Psikologları,\nyorum,\npuan veya ücret\nözelliklerine\ngöre seçebilme",
                                  ),
                                  Feature_Box(
                                    sentence:
                                        "Başka bir uygulamaya\ngerek duymadan\nterapistin ile\nkaliteli ve güvenli\ngörüntülü görüşme",
                                  ),
                                  Feature_Box(
                                    sentence:
                                        "Takvim üzerinden\nrandevu takibi,\nhatırlatıcı bildirim alabilme",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Feature_Box(
                                    sentence: "Ödeme kolaylığı",
                                  ),
                                  Feature_Box(
                                    sentence: "Gizlilik sözleşmesi\nkolaylığı",
                                  ),
                                  Feature_Box(
                                    sentence:
                                        "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Feature_Box extends StatelessWidget {
  const Feature_Box({Key? key, required this.sentence}) : super(key: key);

  final String sentence;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffFD7B22).withOpacity(0.6), spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(color: Color(0xffFD7B22)),
          color: Color(0xffFD7B22),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 150.18,
      width: 209.38,
      child: Text(
        sentence,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
