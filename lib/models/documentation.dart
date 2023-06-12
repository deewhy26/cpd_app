import 'dart:math';
import 'dart:ui';

import '../views/widgets/donut_chart.dart';

class Documentation{
  String tol = "";
  String sol = "";
  int credits = 0;
  List<String> lg1= [""];
  String lg2 = "";
  String iop1 = "";
  String iop2= "";
  Documentation({
    required this.tol,
    required this.sol,
    required this.credits,
    required this.lg1,
    required this.lg2,
    required this.iop1,
    required this.iop2 });

  static List<Documentation>Documents=[
    Documentation(
      tol: 'Course/Programme',
      sol: '',
      credits: 0,
      lg1: [""],
      lg2: "",
      iop1: "",
      iop2: ""
    ),
    Documentation(
        tol: 'Inservice',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Course/Programme',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Inservice',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Course/Programme',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Online learning',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Peer review',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Peer review',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Online learning',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Peer review',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Peer review',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),
    Documentation(
        tol: 'Course/Programme',
        sol: '',
        credits: 0,
        lg1: [""],
        lg2: "",
        iop1: "",
        iop2: ""
    ),

  ];


  static List<Map<String, dynamic>> calculateTopThreePercentages(List<Documentation> documentList) {
    List<Map<String, dynamic>> percentages = [];

    // Calculate the percentage for each unique tol value
    Set<String> uniqueTols = documentList.map((document) => document.tol).toSet();
    for (String tol in uniqueTols) {
      int totalCount = documentList.length;
      int tolCount = documentList.where((document) => document.tol == tol).length;

      double percentage = (tolCount / totalCount) * 100;

      percentages.add({
        'tol': tol,
        'percentage': percentage,
      });
    }

    // Sort the list in descending order based on the percentage
    percentages.sort((a, b) => b['percentage'].compareTo(a['percentage']));

    // Return the top three elements from the sorted list
    return percentages.take(3).toList();
  }


  static List<Map<String, dynamic>> getAllPercentages(List<Documentation> documentList) {
    List<Map<String, dynamic>> percentages = [];

    // Calculate the percentage for each unique tol value
    Set<String> uniqueTols = documentList.map((document) => document.tol).toSet();
    for (String tol in uniqueTols) {
      int totalCount = documentList.length;
      int tolCount = documentList.where((document) => document.tol == tol).length;

      double percentage = (tolCount / totalCount) * 100;

      percentages.add({
        'tol': tol,
        'percentage': percentage,
      });
    }

    // Sort the list in descending order based on the percentage
    percentages.sort((a, b) => b['percentage'].compareTo(a['percentage']));

    // Return the top three elements from the sorted list
    return percentages.toList();
  }


  // List<ChartSection> tolsections = Documentation.getAllPercentages(Documentation.Documents).map((entry) {
  //   String tol = entry['tol'];
  //   double percentage = entry['percentage'];
  //
  //   // Generate a random color for each chart section
  //   Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  //
  //   return ChartSection(color: color, value: percentage);
  // }).toList();

  static List<ChartSection> createChartSections(List<Map<String, dynamic>> data) {
    List<ChartSection> sections = data.map((entry) {
      String tol = entry['tol'];
      double percentage = entry['percentage'];

      // Generate a random color for each chart section
      Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

      return ChartSection(color: color, value: percentage);
    }).toList();

    return sections;
  }
















  Map<String, dynamic> toJson() {
    return {
      "tol": tol,
      "sol": sol,
      "credits": credits,
      "lg1" : lg1,
      "lg2" : lg2,
      "iop1": iop1,
      "iop2": iop2,
    };
  }
  // static Documentation fromSnap(DocumentSnapshot snap){
  //   var snapshot = snap().data as Map<String, dynamic>;
  //   return Documentation(
  //       tol : snapshot["tol"],
  //     sol: snapshot["sol"],
  //     credits: snapshot["credits"],
  //     lg1: snapshot["lg1"],
  //     lg2: snapshot["lg2"],
  //     iop1: snapshot["iop1"],
  //     iop2: snapshot["iop2"],
  //
  //   );
  // }

}