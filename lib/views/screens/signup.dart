import 'package:cpd_app/constansts.dart';
import 'package:cpd_app/views/widgets/oauth_register.dart';
import 'package:cpd_app/views/widgets/user_model_text_input.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.bgColour,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.07),
        child: Column(
          children: [
            SizedBox(height: height*0.1,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Text("Sign Up", style: TextStyle(
                    fontSize: 35, color: Constants.fontColour,
                  )),
                  SizedBox(width: width*0.04),
                  Text("or Use", style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20, color: Constants.fontColour.withOpacity(0.53))),
                  SizedBox(width: width*0.03),
                  InkWell(
                      onTap: (){},
                      child: OAuthRegister(image: AssetImage("assets/images/icons8-google-48 1.png"))),
                  SizedBox(width: width*0.04),
                  InkWell(
                      onTap: (){},
                      child: OAuthRegister(image: AssetImage("assets/images/icons8-apple-64(1) 1.png")))

                ],
              ),
              SizedBox(height: height*0.02,),
              Row(
                children: [
                  Text("Already have an account?", style: TextStyle(fontSize: 20, color: Constants.fontColour.withOpacity(0.51)),),
                  TextButton(onPressed: (){},
                      child: Text("Log In", style: TextStyle(fontSize: 20, color: Constants.fontColour.withOpacity(0.51)),)),
                ]),
            SizedBox(height: height*0.02,),
              Align(
                alignment: Alignment.centerLeft,
                  child: Text("Name",style: TextStyle(fontSize: 25, color: Constants.fontColour, fontWeight: FontWeight.w300))),
              SizedBox(height: height*0.02,),
              UserModelInput(controller: nameController, labelText: "Enter your name...", toHide: false)
          ]
        ),
      ),
    );
  }
}
