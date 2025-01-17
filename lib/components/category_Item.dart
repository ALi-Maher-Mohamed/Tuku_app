// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Category({this.text, this.color,this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(style: const TextStyle(fontSize: 18, color: Colors.white), text!),
      ),
    );
  }
}
