
import 'package:cpd_app/constansts.dart';
import 'package:flutter/material.dart';

class DocReport extends StatelessWidget {
  const DocReport({Key? key,required this.isDoc}) : super(key: key);

  final bool isDoc;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
          height: height*.075,
          width: width*.2,
          child: Column(
            children: [
              Container(
                height: height*.055,
                width: width*.12,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )
                ),
                child: Icon(
                  isDoc?Icons.add:Icons.print,
                  color:Colors.white,
                  size: 30,
                ),
              ),
              Container(
                height: height*.02,
                width: width*.2,
                child: Text(
                    isDoc?"Documents":"Reports",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Constants.fontColour,
                      fontWeight: FontWeight.w100
                  ),
                ),
              )
            ],
          ),
    );
  }
}
