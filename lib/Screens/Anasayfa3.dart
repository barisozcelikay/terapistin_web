import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Anasayfa3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFD7812),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(890.0, -890.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'turuncu_orange' (shape)
                  Container(
                width: 140.0,
                height: 1920.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1097.7, 72.0),
            child: SizedBox(
              width: 161.0,
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
          ),
          Transform.translate(
            offset: Offset(1545.8, 75.0),
            child: SizedBox(
              width: 93.0,
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
          ),
          Transform.translate(
            offset: Offset(844.6, 79.0),
            child: SizedBox(
              width: 163.0,
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
          ),
          Transform.translate(
            offset: Offset(1722.8, 75.0),
            child: SizedBox(
              width: 65.0,
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
          ),
          Transform.translate(
            offset: Offset(384.8, 30.7),
            child: SvgPicture.string(
              _svg_v7vhei,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(403.3, 32.6),
            child: Container(
              width: 14.6,
              height: 14.6,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xfff6ad42),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(175.0, 255.0),
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
          Transform.translate(
            offset: Offset(175.0, 497.0),
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
          Transform.translate(
            offset: Offset(175.0, 815.0),
            child:
                // Adobe XD layer: 'Google play' (shape)
                Container(
              width: 247.0,
              height: 153.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(175.0, 718.0),
            child:
                // Adobe XD layer: 'Icons App Store ' (shape)
                Container(
              width: 247.0,
              height: 153.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1342.8, 74.0),
            child: SizedBox(
              width: 122.0,
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
          ),
          Transform.translate(
            offset: Offset(175.0, 710.0),
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
        ],
      ),
    );
  }
}

const String _svg_v7vhei =
    '<svg viewBox="384.8 30.7 51.7 72.6" ><path transform="translate(384.75, 30.67)" d="M 51.7260856628418 0.5144139528274536 C 51.48178863525391 -0.1270195096731186 49.09520721435547 -0.2159683257341385 46.99927139282227 0.5144139528274536 C 38.81473922729492 3.364532947540283 40.25920867919922 15.74595260620117 31.98446846008301 19.97790908813477 C 28.36888694763184 21.82704162597656 23.37648010253906 21.82704162597656 19.76089859008789 19.97790908813477 C 11.486159324646 15.74595260620117 12.93063640594482 3.364532947540283 4.746094703674316 0.5144139528274536 C 2.650161266326904 -0.2159683406352997 0.2648306787014008 -0.1257667243480682 0.01928196102380753 0.5144139528274536 C -0.2751259505748749 1.287391424179077 2.716559886932373 2.383590936660767 5.03048038482666 5.525613307952881 C 5.97509241104126 6.809731483459473 5.961310386657715 7.287048816680908 7.810442924499512 12.75426483154297 C 10.28973388671875 20.08189392089844 11.08901882171631 21.50507164001465 11.98226547241211 22.76413154602051 C 13.2789134979248 24.59823799133301 14.16589450836182 25.84602165222168 15.86845111846924 26.93470001220703 C 18.7298469543457 28.75501823425293 19.86738586425781 28.37918090820312 20.8796501159668 29.99403953552246 C 21.08021926879883 30.32244300842285 21.23213386535645 30.67817878723145 21.33065986633301 31.05015563964844 C 22.70873641967773 62.82992553710938 24.16699600219727 72.58924865722656 25.46489715576172 72.60428619384766 C 26.76279830932617 72.61931610107422 28.4841480255127 62.77230072021484 30.67779922485352 30.48013687133789 L 30.62267684936523 30.48013687133789 C 30.69501113891602 30.31298828125 30.77872657775879 30.1509952545166 30.87323760986328 29.99530410766602 C 31.8754711151123 28.38043975830078 33.01677703857422 28.75628089904785 35.878173828125 26.93596267700195 C 37.58072662353516 25.85354423522949 38.46645355224609 24.60575675964355 39.77062225341797 22.76539611816406 C 40.66387176513672 21.51259613037109 41.46315383911133 20.08315277099609 43.94244384765625 12.75552845001221 C 45.79157257080078 7.288309097290039 45.77778625488281 6.81099271774292 46.7224006652832 5.526873588562012 C 49.02880477905273 2.37983250617981 52.0204963684082 1.287391424179077 51.7260856628418 0.5144139528274536 Z" fill="#f6ad42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
