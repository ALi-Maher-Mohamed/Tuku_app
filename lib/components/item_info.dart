import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuku_app/models/itemModel.dart';

// ignore: camel_case_types
class itemInfo extends StatelessWidget {
  const itemInfo({super.key, required this.kind, required this.color});
  final itemModel kind;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kind.enName,
                  style: const TextStyle(fontWeight:FontWeight.bold,color: Colors.white, fontSize: 18),
                ),
                Text(
                  kind.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 16,fontWeight:FontWeight.bold),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(kind.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
