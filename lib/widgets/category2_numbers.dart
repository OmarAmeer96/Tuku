import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/allModelClass.dart';

class Category2 extends StatelessWidget {
  const Category2({
    super.key,
    required this.number,
    required this.color,
    required this.itemType,
  });

  final AllModel number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      // 77.25
      height: 82,
      child: Row(
        children: [
          Container(
            color: const Color(0xffe9d5c3),
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                try {
                  AudioCache player = AudioCache(
                    prefix: "assets/sounds/$itemType/",
                  );
                  player.play(number.sound);
                } catch (e) {
                  print(e);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
