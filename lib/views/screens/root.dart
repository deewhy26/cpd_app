import 'dart:ui';

import 'package:cpd_app/views/screens/dashboard.dart';
import 'package:cpd_app/views/screens/future.dart';
import 'package:cpd_app/views/screens/profile.dart';
import 'package:cpd_app/views/screens/view_documents.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../constansts.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavIndex = 0;
  List<Widget> _widgetOptions() {
    return [
      Dashboard(),
      ViewDocs(),
      FuturePlanning(),
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Constants.bgColour,
        body: IndexedStack(
          index: _bottomNavIndex,
          children: _widgetOptions(),
        ),
        bottomNavigationBar:Stack(
            children:[
              BackdropFilter(filter: ImageFilter.blur(
                  sigmaX: 2,
                  sigmaY: 2
              )),
              Positioned(
                bottom:20 ,
                left: width*.04,
                child: Container(
                  height: height*.09,
                  width: width*.92,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(.4)),
                      borderRadius: BorderRadius.circular(25),
                      gradient: RadialGradient(
                          // begin:Alignment.bottomCenter,
                          // end:Alignment.topCenter,
                          colors: [
                            Color(0xff11FD1A).withOpacity(.3),
                            Constants.bgColour
                          ],
                        center: //Alignment(.24, 2.9),
                               _bottomNavIndex==0? Alignment(-.74, 2.9):
                               _bottomNavIndex==1? Alignment(-.24, 2.9):
                               _bottomNavIndex==2? Alignment(.24, 2.9):Alignment(.74, 2.9),

                          radius: 1.6
                      )
                  ),
                ),
              ),
              FloatingNavigationBar(
                backgroundColor: Colors.transparent,
                iconColor: Colors.white70,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                iconSize: 20.0,
                //barHeight: 20,
                indicatorHeight: 4,
                indicatorWidth: 40,
                indicatorColor: Colors.white70.withOpacity(0.4),
                items: [
                  NavBarItems(icon:Icons.dashboard,title: "Dashboard"),
                  NavBarItems( icon: Icons.description_outlined,title: "Documents"),
                  NavBarItems(icon: Icons.directions_run, title: "Future "),
                  NavBarItems(icon: Icons.person_outline,title: "Profile"),
                ],
                onChanged: (value) {
                  setState(() {
                    _bottomNavIndex=value;
                  });
                },
              ),
            ]
        ),

      ),
    );
  }
}
//center: Alignment(-.74, 2),
// center: Alignment(-.24, 2),
// center: Alignment(.24, 2),
//center: Alignment(.74, 2),