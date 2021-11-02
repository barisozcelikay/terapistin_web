import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:terapistin_web/Widgets/support_text_widget.dart';
import 'package:terapistin_web/Widgets/systeminfo.dart';
import 'package:terapistin_web/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class Support extends StatefulWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController _name = TextEditingController();
  TextEditingController _surname = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _email = TextEditingController();

  bool checkedValue = false;
  String dropdownValue = "Konu";

  bool isSent = false;

  final date = DateTime.now();

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _surname = TextEditingController();
    _phoneNumber = TextEditingController();
    _email = TextEditingController();
    print(_name.text.isEmpty);
    String dropdownValue = "Konu";

    /* _name.text = " ";
    _surname.text = " ";
    _phoneNumber.text = " ";
    _email.text = " ";
*/
    print("Oye");
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

  bool _isNumeric(String result) {
    if (result == null) {
      return false;
    }
    return double.tryParse(result) != null;
  }

  void checkAllRequired() {
    setState(() {
      isSent = false;
    });
    if (_name.text.length >= 1 &&
        _surname.text.length >= 1 &&
        (_phoneNumber.text.length >= 1 && _isNumeric(_phoneNumber.text)) ==
            true &&
        (_email.text.length >= 1 && _email.text.contains('@') == true) &&
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

/*
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
  */

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 500
        ? Container(
            // Another fixed-height child.
            color: const Color(0xffFDF8F5), // Green
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
                      "İletişim/Destek",
                      style: TextStyle(
                          color: Color(0xff6F6F6F),
                          fontSize:
                              MediaQuery.of(context).size.width > 500 ? 50 : 40,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 140, top: 10, right: 1, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: Text(
                                  "Destek Formu",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),

                              Row(
                                children: [
                                  Container(
                                      width: 303,
                                      child: Support_Text_Widget(
                                        onChange: (value) {
                                          //_name.text = value;
                                          checkAllRequired();
                                        },
                                        controller: _name,
                                        title: "İsim*",
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 303,
                                      child: Support_Text_Widget(
                                        onChange: (value) {
                                          //_surname.text = value;
                                          checkAllRequired();
                                        },
                                        controller: _surname,
                                        title: "Soyisim*",
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 618,
                                child: Support_Text_Widget(
                                  onChange: (value) {
                                    //_email.text = value;
                                    checkAllRequired();
                                  },
                                  controller: _email,
                                  title: "E-posta*",
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 618,
                                child: Text(
                                  "Konu",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 618,
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 2.0)),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: kMainColor,
                                      ),
                                      iconSize: 25,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
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
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Center(
                                            child: Text(
                                              value,
                                              style: TextStyle(
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
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 618,
                                child: Support_Text_Widget(
                                  onChange: (value) {
                                    checkAllRequired();
                                  },
                                  controller: _phoneNumber,
                                  title: "Telefon(Opsiyonel)",
                                ),
                              ),
                              // Opsiyonel
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 618,
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: Checkbox(
                                        value: checkedValue,
                                        activeColor: kMainColor,
                                        onChanged: (value) {
                                          setState(() {
                                            checkedValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220,
                                    ),
                                    Text(
                                      "Ayrıca E-Bültene Kaydol",
                                      style: TextStyle(
                                          color: checkedValue
                                              ? Colors.black
                                              : Colors.grey.withOpacity(0.9)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Material(
                                  color: (buttonActive && isSent == false)
                                      ? kMainColor
                                      : Colors.grey, // control yap
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: MaterialButton(
                                    minWidth: 618,
                                    height: 42.0,
                                    onPressed: (buttonActive && isSent == false)
                                        ? () {
                                            _firestore
                                                .collection('web_support_form')
                                                .add({
                                              'name': _name.text,
                                              'surname': _surname.text,
                                              'phone': _phoneNumber.text,
                                              'email': _email.text,
                                              'topic': dropdownValue,
                                              'subscribe': checkedValue,
                                              'date':
                                                  '${date.year}/${date.month}/${date.day}'
                                            });
                                            print(
                                                "Portala bilgi Destek Formu Geldi");
                                            setState(() {
                                              isSent = true;
                                            });
                                          }
                                        : null,
                                    child: Text(
                                        isSent == false
                                            ? "Gönder"
                                            : "Gönderildi",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 618,
                                child: Text(
                                    "Geri bildirimde bulunacağınız diğer kanallarımız"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                child: new Center(
                                  child: new Container(
                                    margin: new EdgeInsetsDirectional.only(
                                        start: 1.0, end: 1.0),
                                    height: 1.0,
                                    width: 580,
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  width: 150,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(FontAwesomeIcons.facebook,
                                          color: kMainColor, size: 20.0),
                                      Icon(FontAwesomeIcons.twitter,
                                          color: kMainColor, size: 20.0),
                                      Icon(FontAwesomeIcons.linkedin,
                                          color: kMainColor, size: 20.0),
                                      Icon(FontAwesomeIcons.instagram,
                                          color: kMainColor, size: 20.0)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: new Center(
                              child: new Container(
                                margin: new EdgeInsetsDirectional.only(
                                    start: 1.0, end: 1.0),
                                height: 500.0,
                                width: 1,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 24),
                                  width: 550,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.4),
                                          width: 1)),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Eposta Destek",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(height: 1.5),
                                          children: const <TextSpan>[
                                            TextSpan(
                                              text:
                                                  'Tüm sorularınız, görüşleriniz ve önerileriniz için ',
                                            ),
                                            TextSpan(
                                                text: 'destek@terapistin.com',
                                                style: TextStyle(
                                                    color: kMainColor,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text:
                                                  ' adresine\neposta gönderebilirsiniz.',
                                            )
                                          ],
                                        ),
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      /*Container(
                                    child: Material(
                                      color: kMainColor, // control yap
                                      elevation: 5.0,
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: MaterialButton(
                                        minWidth: 150,
                                        height: 42.0,
                                        onPressed: () => launchEmail(
                                            toEmail:
                                                "baris.ozcelikay@tedu.edu.tr",
                                            subject: "Destek",
                                            message: " "),
                                        child: Text("E-posta Gönder",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white)),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                    ),
                                  ),*/
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 550,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.4),
                                          width: 1)),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Adres Bilgilerimiz",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          child: Text(
                                        "Mustafa Kemal Mh, 2118. Cd. Maidan İş ve Yaşam Merkezi, B Blok, Kat: 2 No: 12\nTerapistin",
                                        style: TextStyle(height: 1.5),
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
        : Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text('İletişim/Destek',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
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
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0)),
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
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
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
                                          print(
                                              "Portala bilgi Destek Formu Geldi");

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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
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
                                          child: Icon(
                                              FontAwesomeIcons.instagram,
                                              color: kMainColor,
                                              size: 20.0)),
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
                            //children: [
                            /*Padding(
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
                              */
                            //],
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
