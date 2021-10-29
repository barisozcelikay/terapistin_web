import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support_Text_Widget extends StatelessWidget {
  Support_Text_Widget(
      {Key? key,
      required this.title,
      required this.controller,
      required this.onChange})
      : super(key: key);

  final String title;
  final Function(String) onChange;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      controller: controller,
      decoration: InputDecoration(
          hintText: title,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0))),
    );
  }
}
