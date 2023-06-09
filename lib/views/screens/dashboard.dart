
import 'package:cpd_app/views/widgets/bar_graph.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';
import '../widgets/doc_report.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<double> yearlySummary=
        [
          14.40,
          28.50,
          42.42,
          10.50,
          10.20,
          89.99,
          70.10,
          42.42,
          10.50,
          10.20,
          69.99,
          45.50,
        ];
    return Scaffold(
      backgroundColor: Constants.bgColour,
      body:Column(
        children: [
          SizedBox(height: height*.03,),
          Container(
            height: height*.25,
            width: width,
            child: Row(
              children: [
                Container(
                  height: height*.25,
                  width: width*.7,
                  padding: EdgeInsets.symmetric(horizontal:width*.06 ),
                  child: Column(
                    children: [
                      SizedBox(height: height*.05,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome,",
                          style: TextStyle(
                              color: Constants.fontColour,
                            fontWeight: FontWeight.w400,
                            fontSize: 35
                          ),),
                      ),
                      SizedBox(height: height*.01,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Jagdish!",
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Constants.fontColour,
                              fontWeight: FontWeight.w400,
                              fontSize: 35
                          ),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height*.25,
                  width: width*.3,
                  child: Column(
                    children: [
                      SizedBox(height: height*.04,),
                      DocReport(isDoc: true),
                      SizedBox(height: height*.015,),
                      DocReport(isDoc: false,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          BarGraph(yearlySummary: yearlySummary,credits: 24,)
        ],
      ) ,
    );
  }
}
