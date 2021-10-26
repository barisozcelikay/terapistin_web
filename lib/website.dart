import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:terapistin_web/Widgets/home_screen_top.dart';

import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'Screens/features_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/how_it_works_screen.dart';
import 'Screens/support_screen.dart';

class WebSite extends StatelessWidget {
  const WebSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: 100 //MediaQuery.of(context).size.height,
                ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            HomeScreenTop(),
            HomeScreenBody(),
            HowItWorks(),
            Features(),
            Support(),
          ],
        ),
      ),
    ));
  }
}
