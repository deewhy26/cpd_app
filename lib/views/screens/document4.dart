
import 'dart:math';

import 'package:flutter/material.dart';

import '../../constansts.dart';
import '../widgets/doc_bullet.dart';
import '../widgets/doc_title.dart';
import '../widgets/next_button.dart';
import 'document5.dart';

class Document4 extends StatefulWidget {
  const Document4({Key? key}) : super(key: key);

  @override
  State<Document4> createState() => _Document4State();
}

class _Document4State extends State<Document4> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.bgColour,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 28,),
                    padding: EdgeInsets.only(bottom: 10),),
                  DocTitle(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.close_sharp, color: Colors.white, size: 34,),
                    padding: EdgeInsets.only(bottom: 10),),
                ],
              ),
              SizedBox(height: height*0.04,),
              DocBullet(color: Colors.primaries[Random().nextInt(Colors.primaries.length)], text: "Impact on Practice"),
              SizedBox(height: height*0.04,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: width*.1),
                child: Container(
                  child: Text(
                   "1. Has the learning made a difference to my capability and performance in my practice?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Constants.fontColour,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),),
                ),
              ),
              SizedBox(height: height*0.04,),
              Container(
                height: height * 0.15,
                width: width * 0.82,
                decoration: BoxDecoration(
                  color: Constants.dialogColour,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Stack(
                  children: [
                    TextField(
                      cursorColor: Constants.fontColour,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Enter an answer..",
                        hintStyle: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Constants.fontColour,
                          fontSize: 19,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      maxLines: 5,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Constants.fontColour,
                        fontSize: 19,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Positioned(
                      bottom: height * 0.02,
                      right: width * 0.04,
                      child: Icon(
                        Icons.mic_none_rounded,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.04,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: width*.1),
                child: Container(
                  child: Text(
                    "2. How am i planning to integrate this learning into practice?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Constants.fontColour,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),),
                ),
              ),
              SizedBox(height: height*0.04,),
              Container(
                height: height * 0.15,
                width: width * 0.82,
                decoration: BoxDecoration(
                  color: Constants.dialogColour,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Stack(
                  children: [
                    TextField(
                      cursorColor: Constants.fontColour,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Enter an answer..",
                        hintStyle: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Constants.fontColour,
                          fontSize: 19,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      maxLines: 5,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Constants.fontColour,
                        fontSize: 19,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Positioned(
                      bottom: height * 0.02,
                      right: width * 0.04,
                      child: Icon(
                        Icons.mic_none_rounded,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.04,),
              InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Document5()),
                    );
                  },
                  child: NextButton()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
