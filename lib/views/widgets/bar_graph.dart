
import 'dart:ui';

import 'package:cpd_app/models/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({Key? key,required this.yearlySummary,required this.credits}) : super(key: key);

  final List yearlySummary;
  final int credits;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    BarData myBarData=BarData(
      jan: yearlySummary[0],
      feb: yearlySummary[1],
      march: yearlySummary[2],
      april: yearlySummary[3],
      may: yearlySummary[4],
      june: yearlySummary[5],
      july: yearlySummary[6],
      aug: yearlySummary[7],
      sept: yearlySummary[8],
      oct: yearlySummary[9],
      nov: yearlySummary[10],
      dec: yearlySummary[11],
    );
    myBarData.initializeBarData();
    return Container(
      height: height*.27,
      width: width*.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage("assets/images/red_gradient_bg.png",),
              fit: BoxFit.fill
          )
      ),
      child: Stack(
        children:[
          Positioned(
            //top: height*.024,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height*.24,
              width: width*.85,
              child: BarChart(
                  BarChartData(
              maxY:100,
              minY:0,
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  titlesData:  FlTitlesData(
                    show: true,
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: getBottomTitles
                    ))
                  ),
                  barGroups:myBarData.barData
                      .map(
                          (data)=>BarChartGroupData(
                            x: data.x.toInt(),
                            barRods: [
                              BarChartRodData(
                                  toY: data.y,color: Colors.white70,
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.purple,
                                //     Colors.yellow
                                //   ]
                                // )
                              )]
                          )).toList(),
              )
                ),
            ),
          ),
      ]
      ),
    );
  }
}

Widget getBottomTitles(double value,TitleMeta meta){
  const style=TextStyle(
    color: Colors.white70,
    fontWeight: FontWeight.bold,
    fontSize: 14
  );
  Text text=Text('M');
  switch(value.toInt())
  {
    case 0:
      text=const Text('J',style: style,);
      break;
    case 1:
      text=const Text('F',style: style,);
      break;
    case 2:
      text=const Text('M',style: style,);
      break;
    case 3:
      text=const Text('A',style: style,);
      break;
    case 4:
      text=const Text('M',style: style,);
      break;
    case 5:
      text=const Text('J',style: style,);
      break;
    case 6:
      text=const Text('J',style: style,);
      break;
    case 7:
      text=const Text('A',style: style,);
      break;
    case 8:
      text=const Text('S',style: style,);
      break;
    case 9:
      text=const Text('O',style: style,);
      break;
    case 10:
      text=const Text('N',style: style,);
      break;
    case 11:
      text=const Text('D',style: style,);
      break;

  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);

}

