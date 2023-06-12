
import 'package:cpd_app/models/documentation.dart';
import 'package:cpd_app/models/donut_chart_data.dart';
import 'package:cpd_app/views/screens/document1.dart';
import 'package:cpd_app/views/widgets/bar_graph.dart';
import 'package:cpd_app/views/widgets/donut_chart_tile.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';
import '../widgets/doc_report.dart';
import '../widgets/donut_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);


  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _moveToLeft() {
    _scrollController.jumpTo(0); // Scroll to the beginning
  }

  void _moveToRight() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent); // Scroll to the end
  }

  List tolList=Documentation.calculateTopThreePercentages(Documentation.Documents);
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
      body:SingleChildScrollView(
        child: Column(
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
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Document1()),
                              );
                            },
                            child: DocReport(isDoc: true)),
                        SizedBox(height: height*.015,),
                        DocReport(isDoc: false,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BarGraph(yearlySummary: yearlySummary,credits: 24,),
            SizedBox(height: height*.035,),
            Row(
              children: [
                SizedBox(width: width*.07,),
                Text("Statistics",style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.w400),),
                SizedBox(width: width*.35,),
                IconButton(
                    onPressed: _moveToLeft,
                    icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                SizedBox(width: width*.01,),
                IconButton(
                    onPressed: _moveToRight,
                    icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
              ],
            ),
            SizedBox(height: height*.01,),
            SizedBox(
              height: height*.2,
              width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return DonutChartTile(data: DonutChartData.data[index]);

                }
              ),
            ),

            // ListView(
            //   scrollDirection: Axis.horizontal,
            //
            // )
          ],
        ),
      ) ,
    );
  }
}
