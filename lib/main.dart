import 'package:flutter/material.dart';
import 'package:tuku_app/screens/home_page.dart';

void main() {
  runApp(const TukuApp());
}

class TukuApp extends StatelessWidget {
  const TukuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
