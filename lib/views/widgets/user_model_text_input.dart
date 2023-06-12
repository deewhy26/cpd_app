import 'package:flutter/material.dart';

import '../../constansts.dart';

class UserModelInput extends StatelessWidget {
  const UserModelInput({Key? key, required this.controller, required this.labelText, required this.toHide}) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final bool toHide;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: height*0.062,
        width: width*0.86,
        decoration: BoxDecoration(
          border: Border.all(color: Constants.accentColour),
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
      ),
        ),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          decoration: InputDecoration(
            labelText: labelText,
            focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))
              ,
              borderSide: BorderSide(
                color:  Constants.borderColour.withBlue(1),
              )
            ),
          ),
      ),
      ),
    );
  }
}
