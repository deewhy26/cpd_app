import 'package:cpd_app/views/screens/document1.dart';
import 'package:cpd_app/views/screens/onboarding.dart';
import 'package:cpd_app/views/screens/signup.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:cpd_app/views/screens/root.dart';

import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Inter",
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}


