import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/phrases_model.dart';

class PhrasesCategry extends StatelessWidget {
  const PhrasesCategry({
    super.key,
    required this.phrase,
    required this.color,
  });

  final Phrase phrase;
  final Color color;

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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jpName1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  phrase.jpName2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  phrase.enName,
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
                    prefix: "assets/sounds/phrases/",
                  );
                  player.play(phrase.sound);
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
