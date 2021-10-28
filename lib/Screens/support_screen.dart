import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  TextEditingController _name = TextEditingController();
  TextEditingController _surname = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _email = TextEditingController();

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
                height: 140,
                color: Colors.red,
                padding: EdgeInsets.only(left: 207, top: 81),
                alignment: Alignment.topLeft,
                child: Text(
                  "İletişim/Destek",
                  style: TextStyle(
                      color: Color(0xff6F6F6F),
                      fontSize: 50,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 188, top: 188, right: 188, bottom: 48),
                child: Row(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.yellow,
                            child: Text(
                              "Destek Formu",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(width: 100, child: TextField()),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(width: 100, child: TextField())
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            child: TextField(),
                          ),
                          Container(),
                          Container(
                            width: 100,
                            child: TextField(),
                          ),
                          // Opsiyonel
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
