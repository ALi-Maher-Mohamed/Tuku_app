// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tuku_app/components/item.dart';
import 'package:tuku_app/models/itemModel.dart';

class familyPage extends StatelessWidget {
  const familyPage({super.key});
  final List<itemModel> members = const [
    itemModel(
        enName: 'Father',
        jpName: 'chichi',
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png'),
    itemModel(
        enName: 'Mother',
        jpName: 'haha',
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png'),
    itemModel(
        enName: 'Grandfather',
        jpName: 'sofu',
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_grandfather.png'),
    itemModel(
        enName: 'Grandmother',
        jpName: 'sobo',
        sound: 'sounds/family_members/grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png'),
    itemModel(
        enName: 'Daughter',
        jpName: 'musume',
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png'),
    itemModel(
        enName: 'son',
        jpName: 'musuko',
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png'),
    itemModel(
        enName: 'older sister',
        jpName: 'Mbak yu',
        sound: 'sounds/family_members/older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png'),
    itemModel(
        enName: 'older brother',
        jpName: 'Kakang Agung',
        sound: 'sounds/family_members/older_bother.wav',
        image: 'assets/images/family_members/family_older_brother.png'),
    itemModel(
        enName: 'younger brother',
        jpName: 'Adhi cilik',
        sound: 'sounds/family_members/younger_brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png'),
    itemModel(
        enName: 'younger sister',
        jpName: 'Adik wedok',
        sound: 'sounds/family_members/younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff6dc),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 127, 59),
        title: const Text(style: TextStyle(color: Colors.white), ('Family Members ')),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return item(
            kind: members[index],
            color: const Color(0xff59973C),
          );
        },
      ),
    );
  }
}
