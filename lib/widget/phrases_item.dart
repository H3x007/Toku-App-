import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases_model.dart';
import 'package:toku_app/styles/styles.dart';

class PhrasesItem extends StatelessWidget {
  PhrasesItem({Key? key, required this.phrases}) : super(key: key);
  final PhrasesModel phrases;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 100,
      color: phrasesColor,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(phrases.jpName, style: titleStyle.copyWith(fontSize: 16),),
              SizedBox(height: 5),
              Text(phrases.enName, style: titleStyle,),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');
              player.play(phrases.audio);
            },
            icon: Icon(Icons.play_arrow, color: Colors.white,size: 28,),
          ),
        ],
      ),
    );
  }
}
