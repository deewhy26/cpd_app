import 'package:flutter/material.dart';

import '../../constansts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key, required this.image, required this.text}) : super(key: key);
  final AssetImage image;
  final String text;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [Column(
          children: [
          Container(
          height: height*0.6,

          decoration: BoxDecoration(
          image: DecorationImage(
          image: image,
      fit: BoxFit.cover))),
      Padding(
      padding: EdgeInsets.only(right: width*0.14, top: height*0.04),
      child: Container(
      width: width*0.77,
      child: Text(text,
      style: TextStyle(color: Constants.fontColour, fontSize: 33.4, fontWeight: FontWeight.w400),),
      ),
      ),


      ],),

      ]
    );
  }
}
