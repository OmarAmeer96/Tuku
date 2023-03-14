import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/allModelClass.dart';
import '../widgets/category2_numbers.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<AllModel> colorsList = const [
    AllModel(
      sound: 'black.wav',
      jpName: '黒 - Burakku',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    AllModel(
      sound: 'brown.wav',
      jpName: '茶色 - Chairo',
      enName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    AllModel(
      sound: 'dusty yellow.wav',
      jpName: 'ほこりっぽい黄色 - Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    AllModel(
      sound: 'gray.wav',
      jpName: 'グレー - Gurē',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    AllModel(
      sound: 'green.wav',
      jpName: '緑 - Midori',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    AllModel(
      sound: 'red.wav',
      jpName: '赤 - Aka',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    AllModel(
      sound: 'white.wav',
      jpName: '白 - Shiro',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    AllModel(
      sound: 'yellow.wav',
      jpName: '黄色 - Kiiro',
      enName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
    AllModel(
      sound: 'black.wav',
      jpName: '黒 - Burakku',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    AllModel(
      sound: 'dusty yellow.wav',
      jpName: 'ほこりっぽい黄色 - Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff795548),
        title: const Text(
          "Colors",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Category2(
            itemType: "colors",
            number: colorsList[index],
            color: const Color(0xff7d40a2),
          );
        },
      ),
      backgroundColor: const Color(0xff7d40a2),
    );
  }
}
