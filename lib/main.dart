import 'package:flutter/material.dart';
import 'package:kottho_kotha/Page/EyeGlass.dart';
import 'package:kottho_kotha/Page/Home.dart';
import 'package:kottho_kotha/Page/Mask.dart';
import 'package:kottho_kotha/Page/Pen.dart';
import 'package:kottho_kotha/Page/VideoD.dart';
import 'package:kottho_kotha/Page/footBall.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        Home.routeName: (context) => Home(),
        Pen.routeName: (context) => Pen(),
        Mask.routeName: (context) => Mask(),
        Football.routeName: (context) => Football(),
        EyeGlass.routeName: (context) => EyeGlass(),
      },
    );
  }
}
