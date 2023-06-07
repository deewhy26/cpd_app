import 'dart:math';

import 'package:cpd_app/views/widgets/doc_bullet.dart';
import 'package:cpd_app/views/widgets/doc_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

import '../../constansts.dart';
import '../widgets/learning_act.dart';

class Document1 extends StatefulWidget {
  const Document1 ({Key? key}) : super(key: key);

  @override
  State<Document1> createState() => _Document1State();
}

class _Document1State extends State<Document1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // var options = Options(format: Format.hex, colorType: ColorType.blue);
    return Scaffold(
      backgroundColor: Constants.bgColour,
    body: Container(
      child: Column(
      children: [
        SizedBox(height: height*0.05),

        Row(

        children: [
          SizedBox(width: width*0.325),
          DocTitle(),
          SizedBox(width: width*0.18),
          IconButton(onPressed: (){}, icon: Icon(Icons.close_sharp, color: Colors.white, size: 34,),
          padding: EdgeInsets.only(bottom: 10),),


        ],
        ),
        SizedBox(height: height*0.04,),
        DocBullet(color: Colors.primaries[Random().nextInt(Colors.primaries.length)], text: "Type of Learning Activity"),
        SizedBox(height: height*0.02,),
        LearningAct(),
      ],
      ),
    ),
    );
  }
}
