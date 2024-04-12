// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tuku_app/components/item.dart';
import 'package:tuku_app/models/itemModel.dart';

class colorPage extends StatelessWidget {
  const colorPage({super.key});
  final List<itemModel> colors = const [
    itemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'kuro',
        enName: 'Black'), 
    itemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'Brown'), 
    itemModel(
        sound: 'sounds/colors/dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Kuning bledug',
        enName: 'Dusty yellow'), 
    itemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'haiiro',
        enName: 'Gray'), 
    itemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'Green'), 
    itemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'Red'), 
    itemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow'), 
    itemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiro',
        enName: 'White'), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff6dc),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 91, 21, 96),
        title: const Text(style: TextStyle(color: Colors.white), ('Colors ')),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return item(kind: colors[index], color:  const Color.fromARGB(255, 86, 38, 95),);
        },
      ),
    );
  }
}
