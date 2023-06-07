import 'package:flutter/material.dart';

import '../../constansts.dart';

class DocBullet extends StatelessWidget {
  DocBullet({Key? key, required this.color, required this.text}) : super(key: key);
  Color color;
  String text;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: width*0.10),
        Container(width: 10, height: 10, color: color),
        SizedBox(width: width*0.03,),
        Text(text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Constants.fontColour,
            fontSize: 20,
          ),)
      ]
    );
  }
}
