import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/styles/styles.dart';
import 'package:toku_app/widget/list_item.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen({Key? key}) : super(key: key);

  List<ItemModel> item = [
    ItemModel(
      audio: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      audio: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      audio: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      audio: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      audio: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      audio: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      audio: 'white.wav',
      jpName: 'Shiroi',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      audio: 'yellow.wav',
      jpName: 'Kiiro',
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: item.length,
        itemBuilder: (context, index) => ListItem(
          item: item[index],
          color: colorsColor,
          itemType: 'colors',
        ),
      ),
    );
  }
}
