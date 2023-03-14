import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors_screen.dart';
import 'package:language_learning_app/screens/family_members_screen.dart';
import 'package:language_learning_app/screens/numbers_screen.dart';
import 'package:language_learning_app/screens/phrases_screen.dart';

import '../widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA26769),
      appBar: AppBar(
        backgroundColor: const Color(0xff262626),
        title: const Text(
          "Tucu App",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color1: const Color(0xffACBFA4),
            color2: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const NumbersScreen();
                  },
                ),
              );
            },
          ),
          Category(
            text: "Family Members",
            color1: Colors.red,
            color2: const Color(0xffACBFA4),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const FamilyMembersScreeen();
                  },
                ),
              );
            },
          ),
          Category(
            text: "Colors",
            color1: const Color(0xffACBFA4),
            color2: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ColorsScreen();
                  },
                ),
              );
            },
          ),
          Category(
            text: "Phrases",
            color1: Colors.red,
            color2: const Color(0xffACBFA4),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PhrasesScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
