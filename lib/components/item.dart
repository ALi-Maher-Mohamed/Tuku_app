// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuku_app/components/item_info.dart';
import 'package:tuku_app/models/itemModel.dart';

class item extends StatelessWidget {
  const item({
    super.key,
    required this.kind,
    required this.color,
  });
  final itemModel kind;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(children: [
        Container(color: const Color(0xfffff6dc), child: Image.asset(kind.image!)),
        Expanded(child: itemInfo(color: color, kind: kind))
      ]),
    );
  }
}
