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
        color: const Color(0xffFDF8F5),
        // Another fixed-height child.
        child: Column(
          children: [
            Container(
              color: Colors.orange[700],
              width: double.infinity,
              constraints: const BoxConstraints(
                maxHeight: 150,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: AutoSizeText(
                  'Hemen indir !\nAlanında uzman olan psikologlar arasından sana en uygun \nolanı seç, terapiye başla ! ',
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  minFontSize: 25,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 40),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
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
                      fontSize:
                          MediaQuery.of(context).size.width > 500 ? 50 : 40,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Image.asset('images/how1.png'),
                          ),
                          Text('En Uygun Terapisti Seç',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                        ],
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Image.asset('images/how2.png'),
                          ),
                          Text('Randevunu Oluştur',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                        ],
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('images/how3.png')),
                ),
              ],
            ),*/
            Expanded(
              flex: 3,
              child: Image.asset('images/three.jpeg'),
            )
          ],
        ));
  }
}
