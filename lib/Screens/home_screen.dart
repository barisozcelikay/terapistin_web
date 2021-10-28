import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDF8F5), // Yellow
      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.13, top: 95),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "En Kaliteli ve Güvenilir\nOnline Terapi Hizmeti veren \nTerapistinApp",
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.028, //50,

                          fontFamily: "Montserrat",
                          color: Color(0xff6F6F6F),
                          fontWeight: FontWeight.w500,
                          height: 1.32),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.only(),
                    child: Text(
                        "Alanında uzman psikologlar içinde \nSana en uygun olanı seç, \nrandevunu oluştur,\nHemen görüşmeye başla!",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.015,
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
                          fontSize: MediaQuery.of(context).size.width * 0.015,
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
                              width: 220,
                              height: 135.63,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: FittedBox(
                      child: Container(
                        transform: Matrix4.translationValues(0.0, -50.0, 0.0),
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
                              image: AssetImage('images/googleplay.png'),
                              width: 220,
                              height: 135.63,
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

            // Telefon Image gelicek
          ],
        ),
      ),
    );
  }
}
