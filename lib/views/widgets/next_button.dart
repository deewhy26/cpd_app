
import 'package:flutter/material.dart';

import '../../constansts.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.05,
      width: width*0.4,
      decoration: BoxDecoration(
        //color: Constants.dialogColour,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff332f36),
            Color(0xff17121a)
          ]
        )
      ),
      child: Center(
        child: Text(
            "Next",
            style: TextStyle(
              color: Constants.fontColour,
              fontSize: 24,
              fontWeight: FontWeight.w100
            ),
        ),
      ),
    );
  }
}
