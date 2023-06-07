import 'package:cpd_app/constansts.dart';
import 'package:flutter/material.dart';

class StatusSelect extends StatelessWidget {
  const StatusSelect({Key? key, required this.text, required this.isSelected}) : super(key: key);
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        height: height*0.062,
        width: width*0.82,

        decoration: BoxDecoration(
          color: Constants.dialogColour,
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomRight: Radius.circular(15)
    ),
        ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(text,
              style: const TextStyle(color: Constants.fontColour, fontSize: 19, fontWeight: FontWeight.w200),),
            ),

            Icon(Icons.check, color: isSelected? Constants.fontColour: Colors.transparent,)
          ],
        ),
      ),
    );
  }
}
