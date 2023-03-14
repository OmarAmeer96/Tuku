import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:language_learning_app/models/phrases_model.dart';
import 'package:language_learning_app/widgets/phrases_category.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<Phrase> phrasesList = const [
    Phrase(
      sound: 'dont_forget_to_subscribe.wav',
      jpName1: '購読することを忘れないでください',
      jpName2: "Kōdoku suru koto o wasurenaide kudasai",
      enName: "Don't forget to subscribe",
    ),
    Phrase(
      sound: 'i_love_programming.wav',
      jpName1: 'プログラミングが大好き',
      jpName2: "Watashi wa puroguramingu daisukidesu",
      enName: 'I love  programming',
    ),
    Phrase(
      sound: 'programming_is_easy.wav',
      jpName1: 'プログラミングは簡単です',
      jpName2: "Puroguramingu wa kantandesu",
      enName: 'Programming is easy',
    ),
    Phrase(
      sound: 'where_are_you_going.wav',
      jpName1: 'どこに行くの？',
      jpName2: "Doko ni iku no?",
      enName: 'Where are you going?',
    ),
    Phrase(
      sound: 'what_is_your_name.wav',
      jpName1: '名前はなんですか？',
      jpName2: "Namae wa nandesu ka?",
      enName: 'What is your name?',
    ),
    Phrase(
      sound: 'i_love_anime.wav',
      jpName1: '私はアニメが嫌いです',
      jpName2: "Watashi wa anime ga daisukidesu",
      enName: 'I hate anime',
    ),
    Phrase(
      sound: 'how_are_you_feeling.wav',
      jpName1: 'ご気分はいかがですか？',
      jpName2: "Go kibun wa ikagadesu ka?",
      enName: 'How are you feeling?',
    ),
    Phrase(
      sound: 'are_you_coming.wav',
      jpName1: '来ますか？',
      jpName2: "Kimasu ka?",
      enName: 'Are you coming?',
    ),
    Phrase(
      sound: 'yes_im_coming.wav',
      jpName1: 'はい、行きます',
      jpName2: "Hai, ikimasu",
      enName: "Yes, I'm coming",
    ),
    Phrase(
      sound: 'i_love_programming.wav',
      jpName1: 'プログラミングが大好き',
      jpName2: "Watashi wa puroguramingu daisukidesu",
      enName: 'I love  programming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff795548),
        title: const Text(
          "Phrases",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesCategry(
            phrase: phrasesList[index],
            color: const Color(0xff51b0d5),
          );
        },
      ),
    );
  }
}
