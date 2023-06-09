//
//
// import 'package:flutter/material.dart';
//
// import '../../constansts.dart';
//
// class LearningAct extends StatelessWidget {
//   const LearningAct({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Container(
//       height: height*0.062,
//       width: width*0.82,
//
//       child: CustomPicker(
//         optionLoop: const [false],
//         widHeight: 50,
//         popupHeight: 400,
//         below: true,
//         verticalOffset: 8,
//         handleChange: (list) {
//           print(list);
//         },
//         yesNo: true,
//         popUpSelColor: Colors.black45,
//         popUpTextStyle:  [
//           TextStyle(color: Constants.fontColour, fontSize: 15, fontWeight: FontWeight.w100),
//         ],
//         contentPadding: EdgeInsets.symmetric(vertical: 0),
//         widTextStyle:  [
//           TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w200),
//         ],
//         // divColor: Colors.white,
//         popUpDecoration: BoxDecoration(
//
//             color: Constants.dialogColour,
//             borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10))),
//         // decorate your picker widget
//         widDecoration: BoxDecoration(
//             color: Constants.dialogColour,
//
//             borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10))),
//         list: [items],
//         wtList: [3],
//         onChanged: (List<int> value) {
//               opt = value;
//               setState(() {
//
//               });
//           },
//
//         //give initial selected item indicies
//         selected: opt,
//       ),
//     );
//   }
// }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// //
// // class PopupMenuButtonExample extends StatefulWidget {
// //   @override
// //   _PopupMenuButtonExampleState createState() => _PopupMenuButtonExampleState();
// // }
// //
// // class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
// //   String selectedOption = 'Select an option';
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Popup Menu Button Example'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           onPressed: () {
// //             //showPopup(context);
// //           },
// //           child: Text(selectedOption),
// //         ),
// //       ),
// //     );
// //   }
//
//   // void showPopup(BuildContext context) {
//   //   showDialog(
//   //     context: context,
//   //     builder: (BuildContext context) {
//   //       return Center(
//   //         child: Container(
//   //           width: MediaQuery.of(context).size.width * 0.8,
//   //           child: Card(
//   //             child: Column(
//   //               mainAxisSize: MainAxisSize.min,
//   //               children: [
//   //                 ListTile(
//   //                   title: Text('Option 1'),
//   //                   onTap: () {
//   //                     setState(() {
//   //                       selectedOption = 'Option 1';
//   //                     });
//   //                     Navigator.pop(context);
//   //                   },
//   //                 ),
//   //                 ListTile(
//   //                   title: Text('Option 2'),
//   //                   onTap: () {
//   //                     setState(() {
//   //                       selectedOption = 'Option 2';
//   //                     });
//   //                     Navigator.pop(context);
//   //                   },
//   //                 ),
//   //                 ListTile(
//   //                   title: Text('Option 3'),
//   //                   onTap: () {
//   //                     setState(() {
//   //                       selectedOption = 'Option 3';
//   //                     });
//   //                     Navigator.pop(context);
//   //                   },
//   //                 ),
//   //               ],
//   //             ),
//   //           ),
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
// //}
//
//
//
//
//
// //
// //
// // import 'package:custom_picker/custom_picker.dart';
// // import 'package:dropdown_button2/dropdown_button2.dart';
// // import 'package:flutter/material.dart';
// //
// // import '../../constansts.dart';
// //
// // class LearningAct extends StatefulWidget {
// //   const LearningAct({Key? key}) : super(key: key);
// //
// //   @override
// //   State<LearningAct> createState() => _LearningActState();
// // }
// //
// // class _LearningActState extends State<LearningAct> {
// //   final List<String> items = [
// //     "Course/Programme", "Seminar/Workshop",
// //     "Inservice",
// //     "Discussion with a colleague",
// //     "Active engagement in supervision or mentoring",
// //     "Peer review",
// //     "Active participation in professional body",
// //     "Professional reading and study(Website/publication)",
// //     "Writing clinical protocols,policies or procedures",
// //     "Online learning",
// //     "Specialist lecture/workshop",
// //     "Work Shadowing",
// //     "Publication of an opinion piece,an audit,case study, research article",
// //     "Undertaking postgraduate education such as P.G/Masters/diploma/doctorate",
// //     "--Other--"
// //   ];
// //
// //   String? selectedValue;
// //   final TextEditingController textEditingController = TextEditingController();
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     var opt = [0];
// //     return SizedBox(
// //       width: 350,
// //
// //       child: CustomPicker(
// //         optionLoop: const [false],
// //         widHeight: 50,
// //         popupHeight: 400,
// //         below: true,
// //         verticalOffset: 8,
// //         handleChange: (list) {
// //           print(list);
// //         },
// //         yesNo: true,
// //         popUpSelColor: Colors.black45,
// //         popUpTextStyle:  [
// //           TextStyle(color: Constants.fontColour, fontSize: 15, fontWeight: FontWeight.w100),
// //         ],
// //         contentPadding: EdgeInsets.symmetric(vertical: 0),
// //         widTextStyle:  [
// //           TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w200),
// //         ],
// //         // divColor: Colors.white,
// //         popUpDecoration: BoxDecoration(
// //
// //             color: Constants.dialogColour,
// //             borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
// //                 bottomRight: Radius.circular(10))),
// //         // decorate your picker widget
// //         widDecoration: BoxDecoration(
// //             color: Constants.dialogColour,
// //
// //             borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
// //                 bottomRight: Radius.circular(10))),
// //         list: [items],
// //         wtList: [3],
// //         onChanged: (List<int> value) {
// //               opt = value;
// //               setState(() {
// //
// //               });
// //           },
// //
// //         //give initial selected item indicies
// //         selected: opt,
// //       ),
// //     );
// //   }
// // }