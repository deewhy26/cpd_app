import 'individual_bar.dart';

class BarData{
  final double jan;
  final double feb;
  final double march;
  final double april;
  final double may;
  final double june;
  final double july;
  final double aug;
  final double sept;
  final double oct;
  final double nov;
  final double dec;

  BarData({
    required this.jan,
    required this.feb,
    required this.march,
    required this.april,
    required this.may,
    required this.june,
    required this.july,
    required this.aug,
    required this.sept,
    required this.oct,
    required this.nov,
    required this.dec,
  });

  List<IndividualBar> barData=[];
  //initialize barData
  void initializeBarData(){
    barData=[
      IndividualBar(x: 0, y: jan),
      IndividualBar(x: 1, y: feb),
      IndividualBar(x: 2, y: march),
      IndividualBar(x: 3, y: april),
      IndividualBar(x: 4, y: may),
      IndividualBar(x: 5, y: june),
      IndividualBar(x: 6, y: july),
      IndividualBar(x: 7, y: aug),
      IndividualBar(x: 8, y: sept),
      IndividualBar(x: 9, y: oct),
      IndividualBar(x: 10, y: nov),
      IndividualBar(x: 11, y: dec),
    ];
  }
}