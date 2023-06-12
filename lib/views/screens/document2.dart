
import 'dart:math';

import 'package:cpd_app/views/screens/document3.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';
import '../widgets/doc_bullet.dart';
import '../widgets/doc_title.dart';
import '../widgets/next_button.dart';

class Document2 extends StatefulWidget {
  const Document2({Key? key}) : super(key: key);

  @override
  State<Document2> createState() => _Document2State();
}

class _Document2State extends State<Document2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.bgColour,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height*0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 34,),
                  padding: EdgeInsets.only(bottom: 10),),
                DocTitle(),
                IconButton(onPressed: (){}, icon: Icon(Icons.close_sharp, color: Colors.white, size: 34,),
                  padding: EdgeInsets.only(bottom: 10),),
              ],
            ),
            SizedBox(height: height*0.04,),
            DocBullet(color: Colors.primaries[Random().nextInt(Colors.primaries.length)], text: "Assign CPD Credits"),
            SizedBox(height: height*0.02,),
            Container(
              height: height*.07,
              width: width*.82,
              decoration: BoxDecoration(
                color: Constants.dialogColour,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                ),
              ),
              child: TextField(
                cursorColor: Constants.fontColour,

                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.mic_none_rounded,color: Colors.white,),
                  contentPadding: EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.02),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                  ),
                  hintText: "Enter a number..",
                  hintStyle:TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Constants.fontColour,
                      fontSize: 19,
                      fontWeight: FontWeight.w200
                  ),
                ),
                maxLines:1,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Constants.fontColour,
                    fontSize: 19,
                    fontWeight: FontWeight.w200
                ),
              ),
            ),
            SizedBox(height: height*0.04,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: width*.1),
              child: Row(
                children: [
                  Text(
                    "Guide:",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Constants.fontColour,fontSize: 24),),
                ],
              ),
            ),
            SizedBox(height: height*0.04,),
            Container(
              width: width*.8,
              child: Text(
                "One hour spent reviewing a relevant journal article --------- 1 CPD credit",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Constants.fontColour,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100,
                ),),
            ),
            SizedBox(height: height*0.03,),
            Container(
              width: width*.8,
              child: Text(
                "7 hours spent on a training course (allowing for time for breaks) ------ 1 to 6 CPD credits",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Constants.fontColour,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w100,
                ),),
            ),
            SizedBox(height: height*0.03,),
            Container(
              width: width*.8,
              child: Text(
               "Discussing a work problem with a colleague for 30 minutes, reflection on learning and application to professional practice ------ 0.5 - 2 credits",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Constants.fontColour,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w100,
                ),),
            ),
            SizedBox(height: height*0.03,),
            Container(
              width: width*.8,
              child: Text(
                " Placement Supervisor (37 Hours) ------5 credits",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Constants.fontColour,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w100,
                ),),
            ),
            SizedBox(height: height*0.05,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Document3()),
                  );
                },
                child: NextButton()
            ),
          ],
        ),
      ),
    );
  }
}



