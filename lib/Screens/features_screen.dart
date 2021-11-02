import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // Another fixed-height child.
        color: const Color(0xffffffff), // Green

        child: Container(
          child: Column(
            crossAxisAlignment: MediaQuery.of(context).size.width > 500
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
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
                  "Özellikler",
                  style: TextStyle(
                      color: Color(0xff6F6F6F),
                      fontSize:
                          MediaQuery.of(context).size.width > 500 ? 50 : 40,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Visibility(
                      visible: () {
                        return MediaQuery.of(context).size.width > 500
                            ? true
                            : false;
                      }(),
                      child: Expanded(
                        child: Image.asset('images/twophones.png'),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 500
                                ? true
                                : false,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: AutoSizeText(
                                        "Terapistin’i Google play veya App Store üzerinden\nindirebilir,\nTerapistini seçtikten sonra randevunu oluşturup,\ngörüşmeye hemen başlayabilirsin!",
                                        maxLines: 4,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: AutoSizeText(
                                        "Terapistin seninle her yerde!",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          MediaQuery.of(context).size.width > 500
                              ? Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Psikologları,\nyorum,\npuan veya ücret\nözelliklerine\ngöre seçebilme",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Başka bir uygulamaya\ngerek duymadan\nterapistin ile\nkaliteli ve güvenli\ngörüntülü görüşme",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Takvim üzerinden\nrandevu takibi,\nhatırlatıcı bildirim alabilme",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence: "Ödeme kolaylığı",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Gizlilik sözleşmesi\nkolaylığı",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                              : Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Psikologları,\nyorum,\npuan veya ücret\nözelliklerine\ngöre seçebilme",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Başka bir uygulamaya\ngerek duymadan\nterapistin ile\nkaliteli ve güvenli\ngörüntülü görüşme",
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Takvim üzerinden\nrandevu takibi,\nhatırlatıcı bildirim alabilme",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence: "Ödeme kolaylığı",
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "Gizlilik sözleşmesi\nkolaylığı",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Feature_Box(
                                                    sentence:
                                                        "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                        ],
                      ),
                    )
                  ],
                ),
              )
              /*Container(
                height: MediaQuery.of(context).size.height - 230,
                alignment: MediaQuery.of(context).size.width > 500
                    ? Alignment.topLeft
                    : Alignment.center,
                child: Row(
                  crossAxisAlignment: MediaQuery.of(context).size.width > 500
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    MediaQuery.of(context).size.width > 500
                        ? Container(
                            child: Flexible(
                              child: FittedBox(
                                child: Image(
                                  width: 1200,
                                  height: 750,
                                  image: AssetImage(
                                    'images/twophones.png',
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      child: Column(
                        crossAxisAlignment:
                            MediaQuery.of(context).size.width > 500
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.center,
                        children: [
                          MediaQuery.of(context).size.width > 500
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: AutoSizeText(
                                        "Terapistin’i Google play veya App Store üzerinden\nindirebilir,\nTerapistini seçtikten sonra randevunu oluşturup,\ngörüşmeye hemen başlayabilirsin!",
                                        maxLines: 4,
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
                                      child: AutoSizeText(
                                        "Terapistin seninle her yerde!",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                )
                              : Container(),
                          MediaQuery.of(context).size.width > 500
                              ? Container(
                                  child: Column(
                                    children: [
                                      Flex(
                                        direction:
                                            MediaQuery.of(context).size.width >
                                                    500
                                                ? Axis.horizontal
                                                : Axis.vertical,
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
                                      Flex(
                                        direction:
                                            MediaQuery.of(context).size.width >
                                                    500
                                                ? Axis.horizontal
                                                : Axis.vertical,
                                        children: [
                                          Feature_Box(
                                            sentence: "Ödeme kolaylığı",
                                          ),
                                          Feature_Box(
                                            sentence:
                                                "Gizlilik sözleşmesi\nkolaylığı",
                                          ),
                                          Feature_Box(
                                            sentence:
                                                "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              : SingleChildScrollView(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: 700),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Feature_Box(
                                          sentence: "Ödeme kolaylığı",
                                        ),
                                        Feature_Box(
                                          sentence:
                                              "Gizlilik sözleşmesi\nkolaylığı",
                                        ),
                                        Feature_Box(
                                          sentence:
                                              "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                        ),
                                        Feature_Box(
                                          sentence: "Ödeme kolaylığı",
                                        ),
                                        Feature_Box(
                                          sentence:
                                              "Gizlilik sözleşmesi\nkolaylığı",
                                        ),
                                        Feature_Box(
                                          sentence:
                                              "İstediğin yer ve\nzamanda\nTerapistin ile\ngörüşebilme",
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                        ],
                      ),
                    )
                  ],
                ),
              )
            */
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
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.width > 500 ? 130 : 200,
          maxWidth: MediaQuery.of(context).size.width > 500 ? 130 : 200),
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
      child: AutoSizeText(
        sentence,
        maxLines: 5,
        minFontSize: 10,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
