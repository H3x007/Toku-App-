import 'package:flutter/material.dart';
import 'package:toku_app/styles/styles.dart';

Widget buildCategoryItem({
  required String title,
  required Color color,
  required onTap,
  String? image,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        width: double.infinity,
        color: color,
        height: 65,
        child: Row(
          children: [
            Text(
              title,
              style: subHeadingStyle,
            ),
            Spacer(),
            Image.asset(image??'', width: 100,)
          ],
        )
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );


