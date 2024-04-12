// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tuku_app/components/item_info.dart';
import 'package:tuku_app/models/itemModel.dart';

class phrasesPage extends StatelessWidget {
  const phrasesPage({super.key});
  final List<itemModel> phrasList = const [
    itemModel(
      enName: 'Are you coming',
      jpName: 'Kimasu ka',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    itemModel(
      enName: "Don't forget to subscribe",
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    itemModel(
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    itemModel(
      enName: 'I love anime ',
      jpName: 'Watashi wa anime ga daisukidesu',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    itemModel(
      enName: 'I love programming',
      jpName: 'Puroguramingu ga daisukidesu',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    itemModel(
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantandesu',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    itemModel(
      enName: 'what is your name',
      jpName: 'Anata no namae wa nandesuka',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    itemModel(
      enName: 'Where are you going',
      jpName: 'Kakang Agung',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    itemModel(
      enName: "Yes I'm coming",
      jpName: 'Hai, ikimasu',
      sound: 'sounds/phrases/yes_im_coming.wav',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 44, 159, 174),
        title: const Text(style: TextStyle(color: Colors.white), ('Phrases ')),
      ),
      body: ListView.builder(
        itemCount: phrasList.length,
        itemBuilder: (context, index) {
          return itemInfo(
            color: Colors.cyan,
            kind: phrasList[index],
            // item : phrass[index],
          );
        },
      ),
    );
  }
}
