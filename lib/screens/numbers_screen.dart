import 'package:flutter/material.dart';
import 'package:language_learning_app/models/allModelClass.dart';
import 'package:language_learning_app/widgets/category2_numbers.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<AllModel> numbersList = const [
    AllModel(
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      enName: "One",
      sound: "number_one_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_two.png",
      jpName: "Si",
      enName: "Two",
      sound: "number_two_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
      sound: "number_three_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
      sound: "number_four_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
      sound: "number_five_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_six.png",
      jpName: "Rocu",
      enName: "Six",
      sound: "number_six_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_seven.png",
      jpName: "Sebu",
      enName: "Seven",
      sound: "number_seven_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
      sound: "number_eight_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyū",
      enName: "Nine",
      sound: "number_nine_sound.mp3",
    ),
    AllModel(
      image: "assets/images/numbers/number_ten.png",
      jpName: "Jū",
      enName: "Ten",
      sound: "number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff795548),
        title: const Text(
          "Numbers",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Category2(
            itemType: "numbers",
            number: numbersList[index],
            color: const Color(0xffb47336),
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbersList) {
  //   List<Widget> itemsList = [];

  //   for (int i = 0; i < numbersList.length; i++) {
  //     itemsList.add(Category2(number: numbersList[i]));
  //   }
  //   return itemsList;
  // }
}
