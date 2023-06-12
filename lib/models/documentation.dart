import 'package:cloud_firestore/cloud_firestore.dart';

class Documentation{
  String typeOfLearning = "";
  String statusOfLearning = "";
  int credits = 0;
  List<String> learningGained1= [""];
  String learningGained2 = "";
  String impactOnPractice1 = "";
  String impactOnPractice2= "";
  Documentation({
    required this.typeOfLearning,
    required this.statusOfLearning,
    required this.credits,
    required this.learningGained1,
    required this.learningGained2,
    required this.impactOnPractice1,
    required this.impactOnPractice2 });
  Map<String, dynamic> toJson() {
    return {
      "typeOfLearning": typeOfLearning,
      "statusOfLearning": statusOfLearning,
      "credits": credits,
      "learningGained1" : learningGained1,
      "learningGained2" : learningGained2,
      "impactOnPractice1": impactOnPractice1,
      "impactOnPractice2": impactOnPractice2,
    };
  }

  static Documentation fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data as Map<String, dynamic>;
    return Documentation(
        typeOfLearning : snapshot["typeOfLearning"],
      statusOfLearning: snapshot["statusOfLearning"],
      credits: snapshot["credits"],
      learningGained1: snapshot["learningGained1"],
      learningGained2: snapshot["learningGained2"],
      impactOnPractice1: snapshot["impactOnPractice1"],
      impactOnPractice2: snapshot["impactOnPractice2"],

    );
  }


}