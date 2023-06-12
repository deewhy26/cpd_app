
import 'package:cpd_app/models/donut_chart_data.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';
import 'donut_chart.dart';

class DonutChartTile extends StatefulWidget {
  const DonutChartTile({Key? key,required this.data}) : super(key: key);

  final DonutChartData data;
  @override
  State<DonutChartTile> createState() => _DonutChartTileState();
}

class _DonutChartTileState extends State<DonutChartTile> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width*.9,
      height:height*.25 ,
      margin: EdgeInsets.all(8),

      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.07),
              child: Stack(
                  children: [
                    DonutChart(
                      radius: width*.15,
                      strokeWidth: 12,
                      sections: widget.data.sections
                    ),
                    Positioned(
                        top: height*.04,
                        left: width*.07,
                        width: width*.175,
                        child: Container(
                          height: height*.06,
                          width: width*.23,
                          child: Text(
                            widget.data.txt,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w200
                            ),),
                        ))
                  ]
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: height*.02),
              child: Container(
                  height: height*.25,
                  width: width*.45,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: widget.data.infoList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.symmetric(vertical: height*.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:width*.28,
                                child: Text(
                                  widget.data.infoList[index]['tol'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Constants.fontColour,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100
                                  ),
                                ),

                              ),
                              Text(
                                "${widget.data.infoList[index]['percentage'].toStringAsFixed(2)} %",
                                style: TextStyle(
                                    color: Constants.fontColour,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
