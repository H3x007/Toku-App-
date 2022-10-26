import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases_model.dart';
import 'package:toku_app/styles/styles.dart';
import 'package:toku_app/widget/list_item.dart';
import 'package:toku_app/widget/phrases_item.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({Key? key}) : super(key: key);

  List<PhrasesModel> item = [
    PhrasesModel(
      audio: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    PhrasesModel(
      audio: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    PhrasesModel(
      audio: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    PhrasesModel(
      audio: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    PhrasesModel(
      audio: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    PhrasesModel(
      audio: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    PhrasesModel(
      audio: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    PhrasesModel(
      audio: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    PhrasesModel(
      audio: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: item.length,
        itemBuilder: (context, index) => PhrasesItem(
          phrases: item[index],
        ),
      ),
    );
  }
}
