import 'package:flutter/material.dart';

import '../models/allModelClass.dart';
import '../widgets/category2_numbers.dart';

class FamilyMembersScreeen extends StatelessWidget {
  const FamilyMembersScreeen({super.key});
  final List<AllModel> familyMembersList = const [
    AllModel(
      sound: 'father.wav',
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    AllModel(
      sound: 'daughter.wav',
      jpName: 'Musume',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    AllModel(
      sound: 'grand father.wav',
      jpName: 'Ojīsan',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    AllModel(
      sound: 'mother.wav',
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    AllModel(
      sound: 'grand mother.wav',
      jpName: 'Sobo',
      enName: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    AllModel(
      sound: 'older bother.wav',
      jpName: 'Nīsan',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    AllModel(
      sound: 'older sister.wav',
      jpName: 'Ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    AllModel(
      sound: 'son.wav',
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    AllModel(
      sound: 'younger brohter.wav',
      jpName: 'otōto',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    AllModel(
      sound: 'younger sister.wav',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff795548),
        title: const Text(
          "Family Members",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return Category2(
            itemType: "family_members",
            number: familyMembersList[index],
            color: const Color(0xff558b37),
          );
        },
      ),
    );
  }
}
