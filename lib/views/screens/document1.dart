import 'dart:math';
import 'package:get/get.dart';
import 'package:cpd_app/controllers/status_sel_controller.dart';
import 'package:cpd_app/views/widgets/doc_bullet.dart';
import 'package:cpd_app/views/widgets/doc_title.dart';
import 'package:cpd_app/views/widgets/status_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

import '../../constansts.dart';
import '../widgets/learning_act.dart';
import '../widgets/next_button.dart';
import 'document2.dart';

class Document1 extends StatefulWidget {
  const Document1 ({Key? key}) : super(key: key);

  @override
  State<Document1> createState() => _Document1State();
}

class _Document1State extends State<Document1> {
  String selectedOption = 'Select an option';
  final List<String> items = [
    "Course/Programme",
    "Seminar/Workshop",
    "Inservice",
    "Discussion with a colleague",
    "Active engagement in supervision or mentoring",
    "Peer review",
    "Active participation in professional body",
    "Professional reading and study(Website/publication)",
    "Writing clinical protocols,policies or procedures",
    "Online learning",
    "Specialist lecture/workshop",
    "Work Shadowing",
    "Publication of an opinion piece,an audit,case study, research article",
    "Undertaking postgraduate education such as P.G/Masters/diploma/doctorate",
    "--Other--"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final statusSelectController = Get.put(StatusSelectController());
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
        //LearningAct(),
        GestureDetector(
          onTap: (){
            showPopup(context);
          },
          child: Container(
            height: height*0.062,
            width: width*0.82,

            decoration: BoxDecoration(
              color: Constants.dialogColour,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(selectedOption,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Constants.fontColour, fontSize: 19, fontWeight: FontWeight.w200),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: height*0.02,),
        Visibility(
            visible: selectedOption=="--Other--"?true:false,
            child:
            Container(
              height: height*.2,
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
                  contentPadding: EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.02),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                  ),
                  hintText: "Other..",
                  hintStyle:TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Constants.fontColour,
                      fontSize: 19,
                      fontWeight: FontWeight.w200
                  ),
                ),
                maxLines:5,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Constants.fontColour,
                    fontSize: 19,
                    fontWeight: FontWeight.w200
                ),
              ),
            )
        ),
        SizedBox(height: height*0.02,),
        DocBullet(color: Colors.primaries[Random().nextInt(Colors.primaries.length)], text: "Status of Learning"),
        SizedBox(height: height*0.02,),
        GestureDetector(
            onTap: (){statusSelectController.check(0);},
            child:  Obx(()=>StatusSelect(text: "Completed",isSelected:statusSelectController.sel[0],))),
        SizedBox(height: height*0.02,),
        GestureDetector(
            onTap: (){statusSelectController.check(1);},
            child:  Obx(()=>StatusSelect(text: "Partially Complete",isSelected:statusSelectController.sel[1],))),
        SizedBox(height: height*0.02,),
        GestureDetector(
            onTap: (){statusSelectController.check(2);},
            child:  Obx(()=>StatusSelect(text: "Open for editing",isSelected:statusSelectController.sel[2],))),
        SizedBox(height: height*0.02,),
        GestureDetector(
            onTap: (){statusSelectController.check(3);},
            child:  Obx(()=>StatusSelect(text: "Pending approval",isSelected:statusSelectController.sel[3],))),
        SizedBox(height: height*0.05,),
        InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Document2()),
              );
            },
            child: NextButton()
        ),
      ],
      ),
    ),
    );
  }


  void showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: Constants.dialogColour,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)
                ),),
            child: Card(
              //clipBehavior: ,
              color:Constants.dialogColour ,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Constants.fontColour, fontSize: 19, fontWeight: FontWeight.w200),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedOption = item;
                      });
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
