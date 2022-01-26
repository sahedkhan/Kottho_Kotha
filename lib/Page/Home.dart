import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:kottho_kotha/Page/EyeGlass.dart';
import 'package:kottho_kotha/Page/FootBall.dart';

import 'package:kottho_kotha/Page/Mask.dart';
import 'package:kottho_kotha/Page/Pen.dart';
import 'package:kottho_kotha/Page/VideoD.dart';

class Home extends StatefulWidget {
  static const routeName = '/home-screen';
  // const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kottho Kotha"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  // color: Colors.blue,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 247, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 0) // changes position of shadow
                                    ),
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/eyeglass.jpeg',
                                  width: 145,
                                  height: 145,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Choshma",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ]),
                        ),
                        onTap: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => EyeGlass());
                          Navigator.push(context, route);
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 247, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 0) // changes position of shadow
                                    ),
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/football.jpeg',
                                  width: 145,
                                  height: 145,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "FootBall",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ]),
                        ),
                        onTap: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => Football());
                          Navigator.push(context, route);
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 247, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 0) // changes position of shadow
                                    ),
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/mask.jpeg',
                                  width: 145,
                                  height: 145,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Mask",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ]),
                        ),
                        onTap: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => Mask());
                          Navigator.push(context, route);
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 247, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 0) // changes position of shadow
                                    ),
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/pen.jpeg',
                                  width: 145,
                                  height: 145,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Pen",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ]),
                        ),
                        onTap: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => Pen());
                          Navigator.push(context, route);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
