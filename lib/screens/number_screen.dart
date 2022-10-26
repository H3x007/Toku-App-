import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/styles/styles.dart';
import 'package:toku_app/widget/list_item.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);

  List<ItemModel> item = [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        audio: 'number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        audio: 'number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        audio: 'number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        audio: 'number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        audio: 'number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        audio: 'number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Seban',
        enName: 'seven',
        audio: 'number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        audio: 'number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine',
        audio: 'number_nine_sound.mp3'),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'ten',
      audio: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListItem(
          item: item[index],
          color: numbersColor,
          itemType: 'numbers',
        ),
        itemCount: item.length,
      ),
    );
  }
}
