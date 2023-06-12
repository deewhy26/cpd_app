import 'package:flutter/material.dart';

import '../../constansts.dart';

class DocTitle extends StatelessWidget {
  const DocTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
    return Container(
        height: height*0.05,
        width: width*0.35, 
        decoration: BoxDecoration(
          border: Border.all(color: Constants.borderColour), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),

        ),
      child: Center(
        child: Text(
          "Document",
          style: TextStyle(fontSize:17,color: Constants.fontColour, fontWeight: FontWeight.w300),
        ),
      ),

    );
  }
}
