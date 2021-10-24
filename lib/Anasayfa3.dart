import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Anasayfa3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdf8f5),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 890.0, end: 890.0),
            Pin(size: 1920.0, start: -890.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'turuncu_orange' (shape)
                  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.6223),
            Pin(size: 33.0, start: 71.0),
            child: Text(
              'Nasıl Çalışır?',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, end: 290.0),
            Pin(size: 33.0, start: 74.0),
            child: Text(
              'Destek',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 148.0, middle: 0.4808),
            Pin(size: 33.0, start: 71.0),
            child: Text(
              'terapistinweb',
              style: TextStyle(
                fontFamily: 'Fidena',
                fontSize: 25,
                color: const Color(0xffffffff),
                decoration: TextDecoration.underline,
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, end: 140.0),
            Pin(size: 33.0, start: 74.0),
            child: Text(
              'Blog',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 51.7, middle: 0.2059),
            Pin(size: 72.6, start: 30.7),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'katman 2' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'katman 1' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_lezc6u,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 14.6, middle: 0.4997),
                                    Pin(size: 14.6, start: 1.9),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xfff6ad42),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 354.0, start: 174.8),
            Pin(size: 123.0, start: 54.3),
            child: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 535.0,
                  height: 123.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: -181.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Text(
                          'terapistin',
                          style: TextStyle(
                            fontFamily: 'Fidena',
                            fontSize: 40,
                            color: const Color(0xffffffff),
                            height: 0.425,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 538.0, end: 248.0),
            Pin(size: 930.0, start: 140.0),
            child: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 1395.0,
                  height: 930.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 66.0, end: -923.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'a' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 719.0, start: 175.0),
            Pin(size: 193.0, start: 255.0),
            child: Text(
              'En Kaliteli ve Güvenilir\nOnline Terapi Hizmeti veren \nTerapistinApp',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 50,
                color: const Color(0xff6f6f6f),
                fontWeight: FontWeight.w500,
                height: 1.32,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 434.0, start: 175.0),
            Pin(size: 111.0, start: 497.0),
            child: Text(
              'Alanında uzman psikologlar içinde \nSana en uygun olanı seç, \nrandevunu oluştur,\nHemen görüşmeye başla! ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff6f6f6f),
                fontWeight: FontWeight.w300,
                height: 1.08,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 247.0, start: 175.0),
            Pin(size: 153.0, start: 815.0),
            child:
                // Adobe XD layer: 'Google play' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 247.0, start: 175.0),
            Pin(size: 153.0, start: 718.0),
            child:
                // Adobe XD layer: 'Icons App Store ' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, middle: 0.7437),
            Pin(size: 33.0, start: 73.0),
            child: Text(
              'Özellikler',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 717.5, end: 717.5),
            Pin(size: 1920.0, end: -717.5),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'turuncu_orange' (shape)
                  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 375.3, start: 188.7),
            Pin(size: 130.3, end: 164.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 53.5, end: 0.0),
                  Pin(size: 75.1, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'katman 2' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'katman 1' (group)
                                        Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: 0.0),
                                          Pin(start: 0.0, end: 0.0),
                                          child: SvgPicture.string(
                                            _svg_h1su31,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(size: 15.1, middle: 0.4997),
                                          Pin(size: 15.1, start: 2.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(
                                                      9999.0, 9999.0)),
                                              color: const Color(0xfff6ad42),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 44.0),
                  child: Text(
                    'terapistin',
                    style: TextStyle(
                      fontFamily: 'Fidena',
                      fontSize: 60,
                      color: const Color(0xffffffff),
                      height: 0.2833333333333333,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 51.8, end: 53.5),
                  Pin(size: 44.0, end: 0.0),
                  child: Text(
                    'Seninle Her Yerde',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 31,
                      color: const Color(0xffffffff),
                      height: 0.3870967741935484,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 148.0, middle: 0.3945),
            Pin(size: 33.0, end: 348.0),
            child: Text(
              'terapistinweb',
              style: TextStyle(
                fontFamily: 'Fidena',
                fontSize: 25,
                color: const Color(0xffffffff),
                decoration: TextDecoration.underline,
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 156.0, middle: 0.39),
            Pin(size: 30.0, end: 295.0),
            child: Text(
              'Nasıl Çalışır?',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 116.0, middle: 0.3814),
            Pin(size: 30.0, end: 244.0),
            child: Text(
              'Özellikler',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, middle: 0.3695),
            Pin(size: 30.0, end: 193.0),
            child: Text(
              'Blog',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 236.0, middle: 0.4086),
            Pin(size: 30.0, end: 149.0),
            child: Text(
              'Sık Sorulan Sorular',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 88.0, middle: 0.3755),
            Pin(size: 30.0, end: 98.0),
            child: Text(
              'Destek',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 226.0, middle: 0.6074),
            Pin(size: 47.0, end: 332.0),
            child: Text(
              'Gizlilik Politikamız\n',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 156.0, middle: 0.5833),
            Pin(size: 30.0, end: 310.0),
            child: Text(
              'KVKK Metni ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.68,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, start: 245.0),
            Pin(size: 61.0, middle: 0.7482),
            child: Text(
              'İletişim ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 50,
                color: const Color(0xff6f6f6f),
                fontWeight: FontWeight.w500,
                height: 1.32,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 164.0, start: 175.0),
            Pin(size: 30.0, start: 710.0),
            child: Text(
              'Hemen İndir!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff6f6f6f),
                fontWeight: FontWeight.w300,
                height: 1.08,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.2, end: 269.5),
            Pin(size: 39.0, end: 340.0),
            child:
                // Adobe XD layer: 'Icon awesome-facebo…' (shape)
                SvgPicture.string(
              _svg_c4jh,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 35.5, end: 206.8),
            Pin(size: 35.5, end: 342.0),
            child:
                // Adobe XD layer: 'Icon awesome-instag…' (shape)
                SvgPicture.string(
              _svg_rm0pbj,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 35.4, end: 144.0),
            Pin(size: 35.4, end: 341.8),
            child:
                // Adobe XD layer: 'Icon awesome-linked…' (shape)
                SvgPicture.string(
              _svg_z6apas,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 452.0, middle: 0.3842),
            Pin(size: 30.0, middle: 0.7738),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: const Color(0xfffd7322),
                  height: 2.64,
                ),
                children: [
                  TextSpan(
                    text: 'destek@terapistin.com ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: 'mail atabilir',
                    style: TextStyle(
                      color: const Color(0xff474746),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 303.0, start: 245.0),
            Pin(size: 75.0, middle: 0.78),
            child: Text(
              'Merhaba sorularınız için\n',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff333333),
                fontWeight: FontWeight.w500,
                height: 1.8,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 78.0, start: 245.0),
            Pin(size: 30.0, middle: 0.7817),
            child: Text(
              ' ve ya ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff333333),
                fontWeight: FontWeight.w500,
                height: 2.64,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 190.0, middle: 0.1994),
            Pin(size: 30.0, middle: 0.7817),
            child: Text(
              '0850 307 7929 ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xfffd7322),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                height: 2.64,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 635.0, middle: 0.4265),
            Pin(size: 96.0, middle: 0.791),
            child: Text(
              'Whatsapp destek hattımızdan bize ulaşabilirsiniz. \n',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff333333),
                fontWeight: FontWeight.w500,
                height: 2.64,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lezc6u =
    '<svg viewBox="0.0 0.0 51.7 72.6" ><path transform="translate(0.0, 0.0)" d="M 51.7260856628418 0.5144139528274536 C 51.48178863525391 -0.1270195096731186 49.09520721435547 -0.2159683257341385 46.99927139282227 0.5144139528274536 C 38.81473922729492 3.364532947540283 40.25920867919922 15.74595260620117 31.98446846008301 19.97790908813477 C 28.36888694763184 21.82704162597656 23.37648010253906 21.82704162597656 19.76089859008789 19.97790908813477 C 11.486159324646 15.74595260620117 12.93063640594482 3.364532947540283 4.746094703674316 0.5144139528274536 C 2.650161266326904 -0.2159683406352997 0.2648306787014008 -0.1257667243480682 0.01928196102380753 0.5144139528274536 C -0.2751259505748749 1.287391424179077 2.716559886932373 2.383590936660767 5.03048038482666 5.525613307952881 C 5.97509241104126 6.809731483459473 5.961310386657715 7.287048816680908 7.810442924499512 12.75426483154297 C 10.28973388671875 20.08189392089844 11.08901882171631 21.50507164001465 11.98226547241211 22.76413154602051 C 13.2789134979248 24.59823799133301 14.16589450836182 25.84602165222168 15.86845111846924 26.93470001220703 C 18.7298469543457 28.75501823425293 19.86738586425781 28.37918090820312 20.8796501159668 29.99403953552246 C 21.08021926879883 30.32244300842285 21.23213386535645 30.67817878723145 21.33065986633301 31.05015563964844 C 22.70873641967773 62.82992553710938 24.16699600219727 72.58924865722656 25.46489715576172 72.60428619384766 C 26.76279830932617 72.61931610107422 28.4841480255127 62.77230072021484 30.67779922485352 30.48013687133789 L 30.62267684936523 30.48013687133789 C 30.69501113891602 30.31298828125 30.77872657775879 30.1509952545166 30.87323760986328 29.99530410766602 C 31.8754711151123 28.38043975830078 33.01677703857422 28.75628089904785 35.878173828125 26.93596267700195 C 37.58072662353516 25.85354423522949 38.46645355224609 24.60575675964355 39.77062225341797 22.76539611816406 C 40.66387176513672 21.51259613037109 41.46315383911133 20.08315277099609 43.94244384765625 12.75552845001221 C 45.79157257080078 7.288309097290039 45.77778625488281 6.81099271774292 46.7224006652832 5.526873588562012 C 49.02880477905273 2.37983250617981 52.0204963684082 1.287391424179077 51.7260856628418 0.5144139528274536 Z" fill="#f6ad42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h1su31 =
    '<svg viewBox="0.0 0.0 53.5 75.1" ><path transform="translate(0.0, 0.0)" d="M 53.47068023681641 0.531782329082489 C 53.21814346313477 -0.1312847286462784 50.75107192993164 -0.2232335209846497 48.58444595336914 0.531782329082489 C 40.12387084960938 3.47802734375 41.61706161499023 16.27703666687012 33.06324005126953 20.65172386169434 C 29.32571601867676 22.56322288513184 24.1649284362793 22.56322288513184 20.42740631103516 20.65172386169434 C 11.87358283996582 16.27703666687012 13.36677742004395 3.47802734375 4.906196117401123 0.531782329082489 C 2.739572525024414 -0.2232335358858109 0.273792028427124 -0.1299896985292435 0.01996169798076153 0.531782329082489 C -0.2843756973743439 1.330830097198486 2.808210372924805 2.464001178741455 5.200172901153564 5.711994647979736 C 6.176643848419189 7.039422035217285 6.162396907806396 7.532838344573975 8.073895454406738 13.1844482421875 C 10.63680553436279 20.75921440124512 11.46304798126221 22.23039245605469 12.38642120361328 23.53191757202148 C 13.7268009185791 25.42788314819336 14.64369773864746 26.71775054931641 16.40367698669434 27.84314727783203 C 19.36157989501953 29.7248592376709 20.53748321533203 29.33634567260742 21.58388900756836 31.00566864013672 C 21.79122352600098 31.34514808654785 21.94826126098633 31.71288108825684 22.05010986328125 32.0974006652832 C 23.47466468811035 64.94901275634766 24.98210716247559 75.0374755859375 26.32378196716309 75.05302429199219 C 27.66545867919922 75.06855773925781 29.44486427307129 64.88944244384766 31.71250152587891 31.50815963745117 L 31.65551948547363 31.50815963745117 C 31.73029327392578 31.33537483215332 31.81683158874512 31.16791725158691 31.91452980041504 31.0069751739502 C 32.95056533813477 29.337646484375 34.13036346435547 29.72616386413574 37.0882682800293 27.84445190429688 C 38.84824371337891 26.72552680969238 39.76383972167969 25.43565559387207 41.11199569702148 23.53322410583496 C 42.03536987304688 22.23817253112793 42.86161422729492 20.76051712036133 45.42452239990234 13.18575382232666 C 47.33601760864258 7.534141063690186 47.32176208496094 7.040726184844971 48.29823684692383 5.713297367095947 C 50.68243026733398 2.460115909576416 53.77502059936523 1.330830097198486 53.47068023681641 0.531782329082489 Z" fill="#f6ad42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c4jh =
    '<svg viewBox="1611.2 5314.0 39.2 39.0" ><path transform="translate(1610.67, 5313.44)" d="M 39.79982376098633 20.18116188049316 C 39.79982376098633 9.343433380126953 31.01888847351074 0.5625 20.18116188049316 0.5625 C 9.343433380126953 0.5625 0.5625 9.343433380126953 0.5625 20.18116188049316 C 0.5625 29.97308921813965 7.736759662628174 38.08951950073242 17.11574554443359 39.5625 L 17.11574554443359 25.85237693786621 L 12.13197231292725 25.85237693786621 L 12.13197231292725 20.18116188049316 L 17.11574554443359 20.18116188049316 L 17.11574554443359 15.85872745513916 C 17.11574554443359 10.94219589233398 20.04272270202637 8.226434707641602 24.5257453918457 8.226434707641602 C 26.6727237701416 8.226434707641602 28.91779327392578 8.609314918518066 28.91779327392578 8.609314918518066 L 28.91779327392578 13.4348726272583 L 26.44331169128418 13.4348726272583 C 24.00679969787598 13.4348726272583 23.2465763092041 14.94740772247314 23.2465763092041 16.49870681762695 L 23.2465763092041 20.18116188049316 L 28.68759155273438 20.18116188049316 L 27.81740951538086 25.85237693786621 L 23.2465763092041 25.85237693786621 L 23.2465763092041 39.5625 C 32.62556457519531 38.08951950073242 39.79982376098633 29.97308921813965 39.79982376098633 20.18116188049316 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rm0pbj =
    '<svg viewBox="1677.8 5315.6 35.5 35.5" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 1677.79, 5351.04)" d="M 17.73392486572266 8.636562347412109 C 12.70268726348877 8.636562347412109 8.644473075866699 12.69477653503418 8.644473075866699 17.72601509094238 C 8.644473075866699 22.75725364685059 12.70268726348877 26.81546783447266 17.73392486572266 26.81546783447266 C 22.76516151428223 26.81546783447266 26.8233757019043 22.75724983215332 26.8233757019043 17.72601509094238 C 26.8233757019043 12.69477844238281 22.76516151428223 8.636562347412109 17.73392486572266 8.636562347412109 Z M 17.73392486572266 23.63534355163574 C 14.48260593414307 23.63534355163574 11.82459449768066 20.9852409362793 11.82459449768066 17.72601127624512 C 11.82459449768066 14.46678161621094 14.47469615936279 11.81668090820312 17.73392486572266 11.81668090820312 C 20.99315452575684 11.81668090820312 23.64325523376465 14.46678161621094 23.64325523376465 17.72601127624512 C 23.64325523376465 20.9852409362793 20.98524475097656 23.63534355163574 17.73392486572266 23.63534355163574 Z M 29.31526184082031 8.264755249023438 C 29.31526184082031 9.443456649780273 28.3659725189209 10.38483619689941 27.19518089294434 10.38483619689941 C 26.0164794921875 10.38483619689941 25.07510185241699 9.435546875 25.07510185241699 8.264755249023438 C 25.07510185241699 7.09396505355835 26.02439117431641 6.144674777984619 27.19518089294434 6.144674777984619 C 28.3659725189209 6.144674777984619 29.31526184082031 7.09396505355835 29.31526184082031 8.264755249023438 Z M 35.33534240722656 10.41648101806641 C 35.20085906982422 7.576521396636963 34.55217742919922 5.06090259552002 32.47164916992188 2.988286018371582 C 30.39903450012207 0.9156694412231445 27.88341522216797 0.2669875621795654 25.04345703125 0.1245942115783691 C 22.11647987365723 -0.04153132438659668 13.34345817565918 -0.04153132438659668 10.41648101806641 0.1245942115783691 C 7.584431648254395 0.2590768337249756 5.068812847137451 0.9077587127685547 2.988286018371582 2.980374813079834 C 0.9077589511871338 5.052990913391113 0.2669876515865326 7.568610668182373 0.1245943084359169 10.4085693359375 C -0.04153144359588623 13.33554649353027 -0.04153144359588623 22.10856819152832 0.1245943084359169 25.03554725646973 C 0.2590770423412323 27.87550735473633 0.9077585935592651 30.3911247253418 2.988286018371582 32.46374130249023 C 5.068812847137451 34.53635406494141 7.576520919799805 35.18503952026367 10.41648101806641 35.32743072509766 C 13.34345817565918 35.49355316162109 22.11647987365723 35.49355316162109 25.04345703125 35.32743072509766 C 27.8834171295166 35.19294738769531 30.3990364074707 34.54426574707031 32.47165298461914 32.46373748779297 C 34.54426956176758 30.39112091064453 35.19295120239258 27.87550163269043 35.33534622192383 25.03554344177246 C 35.50146865844727 22.10856628417969 35.50146865844727 13.34345626831055 35.33534622192383 10.41647911071777 Z M 31.55400466918945 28.17611503601074 C 30.93696594238281 29.72661972045898 29.74244117736816 30.92114639282227 28.18402481079102 31.54609298706055 C 25.85035514831543 32.47165298461914 20.31282806396484 32.25806045532227 17.73392486572266 32.25806045532227 C 15.15501976013184 32.25806045532227 9.609584808349609 32.46374130249023 7.283823013305664 31.54609298706055 C 5.733315467834473 30.92905426025391 4.538792610168457 29.73453140258789 3.913843393325806 28.17611503601074 C 2.988285303115845 25.84244346618652 3.201875925064087 20.30491828918457 3.201875925064087 17.72601509094238 C 3.201875925064087 15.14710998535156 2.996196269989014 9.601673126220703 3.913843393325806 7.275912761688232 C 4.530881404876709 5.725406169891357 5.725405216217041 4.530882835388184 7.283823013305664 3.905932903289795 C 9.617494583129883 2.980375289916992 15.15501976013184 3.193965435028076 17.73392486572266 3.193965435028076 C 20.31282806396484 3.193965435028076 25.8582649230957 2.988286018371582 28.18402481079102 3.905932903289795 C 29.73453140258789 4.522971630096436 30.92905616760254 5.717494487762451 31.55400466918945 7.275912761688232 C 32.47956466674805 9.609584808349609 32.26597213745117 15.14710998535156 32.26597213745117 17.72601509094238 C 32.26597213745117 20.30491828918457 32.47956466674805 25.85035514831543 31.55400466918945 28.17611503601074 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z6apas =
    '<svg viewBox="1740.6 5315.8 35.4 35.4" ><path transform="matrix(1.0, 0.0, 0.0, 1.0, 1740.56, 5315.78)" d="M 32.90872192382812 0 L 2.523529529571533 0 C 1.131237268447876 0 3.46580723142205e-30 1.147058725357056 4.792503257681003e-30 2.555172443389893 L 3.336864416086002e-29 32.88499069213867 C 3.46953390586444e-29 34.2931022644043 1.131237268447876 35.44016265869141 2.523529529571533 35.44016265869141 L 32.90872192382812 35.44016265869141 C 34.3010139465332 35.44016265869141 35.44016265869141 34.2931022644043 35.44016265869141 32.88499069213867 L 35.44016265869141 2.555172443389893 C 35.44016265869141 1.147058725357056 34.3010139465332 0 32.90872192382812 0 Z M 10.71115589141846 30.37728118896484 L 5.458417892456055 30.37728118896484 L 5.458417892456055 13.46409797668457 L 10.71906661987305 13.46409797668457 L 10.71906661987305 30.37728118896484 Z M 8.084787368774414 11.1541576385498 C 6.399796962738037 11.1541576385498 5.039147853851318 9.785598754882812 5.039147853851318 8.108518600463867 C 5.039147853851318 6.431439876556396 6.399796962738037 5.062880039215088 8.084787368774414 5.062880039215088 C 9.761865615844727 5.062880039215088 11.13042640686035 6.431439876556396 11.13042640686035 8.108518600463867 C 11.13042640686035 9.793508529663086 9.769777297973633 11.1541576385498 8.084787368774414 11.1541576385498 Z M 30.40101432800293 30.37728118896484 L 25.14827728271484 30.37728118896484 L 25.14827728271484 22.15010070800781 C 25.14827728271484 20.18823432922363 25.10872268676758 17.66470527648926 22.4190673828125 17.66470527648926 C 19.68194961547852 17.66470527648926 19.2626781463623 19.80060768127441 19.2626781463623 22.0077075958252 L 19.2626781463623 30.37728118896484 L 14.00993919372559 30.37728118896484 L 14.00993919372559 13.46409797668457 L 19.04908752441406 13.46409797668457 L 19.04908752441406 15.7740364074707 L 19.12028503417969 15.7740364074707 C 19.82434272766113 14.44503211975098 21.54097366333008 13.04482841491699 24.09614562988281 13.04482841491699 C 29.41217041015625 13.04482841491699 30.40101432800293 16.54928970336914 30.40101432800293 21.10588264465332 L 30.40101432800293 30.37728118896484 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
