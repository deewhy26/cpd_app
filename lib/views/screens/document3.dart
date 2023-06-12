import 'dart:math';
import 'package:flutter/material.dart';

import '../../constansts.dart';
import '../widgets/doc_bullet.dart';
import '../widgets/doc_title.dart';
import '../widgets/next_button.dart';
import 'document4.dart';

class Document3 extends StatefulWidget {
  const Document3({Key? key}) : super(key: key);

  @override
  State<Document3> createState() => _Document3State();
}

class _Document3State extends State<Document3> {
  List<Widget> bulletPoints = [];

  List<TextEditingController> textControllers = [];
  String concatenatedText = '';

  void addTextField() {
    setState(() {
      textControllers.add(TextEditingController());
    });
  }

  void removeTextField(int index) {
    setState(() {
      textControllers.removeAt(index);
    });
  }

  void concatenateText() {
    setState(() {
      concatenatedText = textControllers.map((controller) => controller.text).join(' ');
    });
  }

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 34,
                    ),
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  DocTitle(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                      size: 34,
                    ),
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              DocBullet(
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                text: "Learning Gained",
              ),
              SizedBox(height: height * 0.04),
                ListView.builder(
                shrinkWrap: true,
                itemCount: textControllers.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                    child: Row(
                    children: [
                      Expanded(
                      child: TextField(
                      controller: textControllers[index],
                      decoration: InputDecoration(
                      labelText: 'TextField ${index + 1}',
                      ),
                      ),
                      ),
                    ],
                    ),
                  );
                },
                ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add, color: Colors.white, size: 30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Row(
                  children: [
                    Text(
                      "1. What have I learnt today?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Constants.fontColour,
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Container(
                  child: Text(
                    "2. How can I integrate this learning in my work practice?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Constants.fontColour,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.25,
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
              SizedBox(height: height * 0.04),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Document4()),
                  );
                },
                child: NextButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
