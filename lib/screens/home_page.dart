import 'package:flutter/material.dart';
import 'package:tuku_app/components/category_Item.dart';
import 'package:tuku_app/screens/Numbers_page.dart';
import 'package:tuku_app/screens/colors_page.dart';
import 'package:tuku_app/screens/family_page.dart';
import 'package:tuku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff6dc),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(style: TextStyle(color: Colors.white), 'Tuku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: "Numbers",
            color: const Color(0xffEf9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const familyPage();
                },
              ));
            },
            text: 'Family Member',
            color: Colors.lightGreen[800],
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const colorPage();
                },
              ));
            },
            text: "Colors",
            color: const Color.fromARGB(255, 91, 21, 96),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const phrasesPage();
                },
              ));
            },
            text: "Phrases",
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
