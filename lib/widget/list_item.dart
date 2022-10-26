import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/styles/styles.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key, required this.item, required this.color, required this.itemType}) : super(key: key);
  final ItemModel item;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(item.image),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.jpName,
                  style: titleStyle,
                ),
                Text(
                  item.enName,
                  style: titleStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(item.audio);
            },
            icon: Icon(Icons.play_arrow, color: Colors.white,size: 28,),
          ),
        ],
      ),
    );
  }
}
