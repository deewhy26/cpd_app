import 'dart:math';
import 'dart:ui';

import '../views/widgets/donut_chart.dart';
import 'documentation.dart';

class DonutChartData{
  String txt;
  List<ChartSection> sections;
  List infoList;
  DonutChartData({
    required this.txt,
    required this.sections,
    required this.infoList,
});

  static List<DonutChartData> data=[
    DonutChartData(
        txt: "Type of Learning",

        sections: Documentation.createChartSections(Documentation.getAllPercentages(Documentation.Documents)),

        // Documentation.getAllPercentages(Documentation.Documents).map((entry) {
        //   String tol = entry['tol'];
        //   double percentage = entry['percentage'];
        //
        //   // Generate a random color for each chart section
        //   Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        //
        //   return ChartSection(color: color, value: percentage);
        // }).toList(),

        infoList: Documentation.calculateTopThreePercentages(Documentation.Documents)
    ),

    DonutChartData(
        txt: "Status of Learning",

        sections: Documentation.createChartSections(Documentation.getAllPercentages(Documentation.Documents)),
        // Documentation.getAllPercentages(Documentation.Documents).map((entry) {
        //   String tol = entry['tol'];
        //   double percentage = entry['percentage'];
        //
        //   // Generate a random color for each chart section
        //   Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        //
        //   return ChartSection(color: color, value: percentage);
        // }).toList(),

        infoList: Documentation.calculateTopThreePercentages(Documentation.Documents)
    )
  ];

}