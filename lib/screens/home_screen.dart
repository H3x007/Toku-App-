import 'package:flutter/material.dart';
import 'package:toku_app/components/components.dart';
import 'package:toku_app/screens/color_screen.dart';
import 'package:toku_app/screens/family_screen.dart';
import 'package:toku_app/screens/number_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toku App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: buildCategoryItem(
              title: 'Numbers',
              color: numbersColor,
              image: 'assets/images/numbers/number_one.png',
              onTap: () {
                navigateTo(context, NumberScreen());
              },
            ),
          ),
          Expanded(
            child: buildCategoryItem(
              title: 'Family Members',
              color: familyMemberColor,
              image: 'assets/images/family_members/family_father.png',
              onTap: () {
                navigateTo(context, FamilyScreen());
              },
            ),
          ),
          Expanded(
            child: buildCategoryItem(
              title: 'Colors',
              color: colorsColor,
              image: 'assets/images/colors/color_gray.png',
              onTap: () {
                navigateTo(context, ColorScreen());
              },
            ),
          ),
          Expanded(
            child: buildCategoryItem(
              title: 'Phrases',
              color: phrasesColor,
              image: 'assets/images/phrase/phrase.png',
              onTap: () {
                navigateTo(context, PhrasesScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
