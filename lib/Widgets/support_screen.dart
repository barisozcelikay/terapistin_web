// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terapistin_web/Widgets/support_text_widget.dart';
import 'package:terapistin_web/Widgets/systeminfo.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class Support extends StatefulWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  // FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController _name = TextEditingController();
  TextEditingController _surname = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _email = TextEditingController();

  bool checkedValue = false;
  String dropdownValue = "Konu";

  bool isSent = false;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _surname = TextEditingController();
    _phoneNumber = TextEditingController();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _name.dispose();
    _surname.dispose();
    _phoneNumber.dispose();
    _email.dispose();
    super.dispose();
  }

  bool buttonActive = false;

  void checkAllRequired() {
    setState(() {
      isSent = false;
    });
    if (_name.text.isNotEmpty &&
        _surname.text.isNotEmpty &&
        _phoneNumber.text.isNotEmpty &&
        _email.text.isNotEmpty &&
        dropdownValue != "Konu") {
      print("renk degisti");
      setState(() {
        buttonActive = true;
      });
    } else {
      print(_phoneNumber.text.length);
      print(dropdownValue);
      setState(() {
        buttonActive = false;
      });
    }
  }

  Future launchEmail(
      {required String toEmail,
      required String subject,
      required String message}) async {
    final mailtoLink = Mailto(
        to: [toEmail],
        subject: subject,
        body: "deneme"); // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
    /*
    final url =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    }
    */
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('İletişim Formu',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: const Color(0xff6F6F6F),
                        fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: (SystemInfo.isWebBrowser &&
                                  SystemInfo.isMobileWebBrowser) ==
                              true
                          ? 300
                          : 800),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Support_Text_Widget(
                          onChange: (value) {
                            //_name.text = value;
                            checkAllRequired();
                          },
                          controller: _name,
                          title: "İsim*",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Support_Text_Widget(
                          onChange: (value) {
                            //_surname.text = value;
                            checkAllRequired();
                          },
                          controller: _surname,
                          title: "Soyisim*",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Support_Text_Widget(
                          onChange: (value) {
                            //_email.text = value;
                            checkAllRequired();
                          },
                          controller: _email,
                          title: "E-posta*",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InputDecorator(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2.0)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(
                                Icons.arrow_drop_down,
                              ),
                              underline: Container(
                                height: 2,
                                color: kMainColor,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                                checkAllRequired();
                              },
                              items: <String>[
                                'Konu',
                                'Geri Bildirim',
                                'Şikayet',
                                'Öneri'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Support_Text_Widget(
                          onChange: (value) {
                            checkAllRequired();
                          },
                          controller: _phoneNumber,
                          title: "Telefon(Opsiyonel)",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: checkedValue,
                              activeColor: kMainColor,
                              onChanged: (value) {
                                setState(() {
                                  checkedValue = value!;
                                });
                              },
                            ),
                            Text(
                              "Ayrıca E-Bültene Kaydol",
                              style: TextStyle(
                                  color: checkedValue
                                      ? Colors.black
                                      : Colors.grey.withOpacity(0.9)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Material(
                          color: (buttonActive && isSent == false)
                              ? kMainColor
                              : Colors.grey, // control yap
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10.0),
                          child: MaterialButton(
                            onPressed: (buttonActive && isSent == false)
                                ? () {
                                    firestore
                                        .collection('web_support_form')
                                        .add({
                                      'name': _name.text,
                                      'surname': _surname.text,
                                      'phone': _phoneNumber.text,
                                      'email': _email.text,
                                      'topic': dropdownValue,
                                      'subscribe': checkedValue
                                    });
                                    print("Portala bilgi Destek Formu Geldi");

                                    setState(() {
                                      isSent = true;
                                    });
                                  }
                                : null,
                            child: Text(
                                isSent == false ? "Gönder" : "Gönderildi",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            const Text(
                                "Geri bildirimde bulunacağınız diğer kanallarımız"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(FontAwesomeIcons.facebook,
                                      color: kMainColor, size: 20.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(FontAwesomeIcons.twitter,
                                      color: kMainColor, size: 20.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: kMainColor, size: 20.0),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(FontAwesomeIcons.instagram,
                                        color: kMainColor, size: 20.0)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: () {
                  print(
                      'Size --> Width: ${MediaQuery.of(context).size.width}  Height: ${MediaQuery.of(context).size.height}');
                  return MediaQuery.of(context).size.width <= 500
                      ? true
                      : false;
                }(),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: const BoxDecoration(
                      // color: Colors.blue,
                      border: Border(
                        top: BorderSide(width: 2.0, color: Colors.grey),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Adres Bilgilerimiz',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        color: const Color(0xff6F6F6F),
                                        fontWeight: FontWeight.w400))),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Terapistin\n\nMustafa Kemal Mh. , 2118. Cd. Maidan İş ve Yaşam Merkezi, B Blok, Kat: 2 No: 12",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Visibility(
          visible: () {
            print(
                'Size --> Width: ${MediaQuery.of(context).size.width}  Height: ${MediaQuery.of(context).size.height}');
            return MediaQuery.of(context).size.width > 500 ? true : false;
          }(),
          child: Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5 +
                  AppBar().preferredSize.height,
              decoration: const BoxDecoration(
                // color: Colors.blue,
                border: Border(
                  left: BorderSide(width: 2.0, color: Colors.grey),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Adres Bilgilerimiz',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: const Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w400))),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Terapistin\n\nMustafa Kemal Mh. , 2118. Cd. Maidan İş ve Yaşam Merkezi, B Blok, Kat: 2 No: 12",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
