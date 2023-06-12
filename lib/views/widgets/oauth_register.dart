import 'package:flutter/material.dart';

import '../../constansts.dart';

class OAuthRegister extends StatelessWidget {
  const OAuthRegister({Key? key, required this.image}) : super(key: key);
  final AssetImage image;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.12,
      height: height*0.06,
      decoration: BoxDecoration(
          border: Border.all(color: Constants.borderColour),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          image: DecorationImage(
            image: image,
          )
      ),
    );
  }
}
