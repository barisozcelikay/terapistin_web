import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:terapistin_web/Widgets/systeminfo.dart';
import 'website.dart';

void main() async {
  runApp(const MyApp());
  await initFirebase();
}

initFirebase() async {
  SystemInfo.initEnvironmentInfo();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Terapistin - Seninle Her Yerde',
        home: WebSite());
  }
}
