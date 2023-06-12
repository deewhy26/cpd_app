import 'package:cpd_app/views/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constansts.dart';
import '../widgets/onboarding_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Constants.bgColour,
        body: Stack(
      children: [

        PageView(
          controller: _controller,
        children: [OnboardingPage(image: AssetImage("assets/images/image 1.jpg"), text: "Meet your one stop CPD documentation solution."),
          OnboardingPage(image: AssetImage("assets/images/image 2.jpg"), text: "Create, report, review documents. Track your accomplishments.")
          ]
        ),
        Padding(
          padding: EdgeInsets.only(top: height*0.9, left: width*0.05),
          child: Row(
            children: [

              Container(

                  child: SmoothPageIndicator(controller: _controller, count: 2, effect: ExpandingDotsEffect(
                    dotColor: Constants.accentColour.withOpacity(0.9),
                    spacing: width*0.04,
                    dotWidth: width*0.06,
                    activeDotColor: Constants.accentColour,
                    radius: 0,
                  ),)),
              SizedBox(width: width*0.18),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Container(
                  width: width*0.44,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: Constants.accentColour,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text("Get Started", style: TextStyle(color: Constants.fontColour, fontSize: 20, fontWeight: FontWeight.w200)),
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 0.39*width, right: 0.39*width, top: height*0.03),
          child: SizedBox(height: height*0.11, child: Image.asset("assets/images/image 3.png")),
        ),
      ],
    ));

  }
}
