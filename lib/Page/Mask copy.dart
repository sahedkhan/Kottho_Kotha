import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kottho_kotha/Page/Home.dart';

class Mask extends StatefulWidget {
  static const routeName = '/mask-screen';
  // const Mask({Key key}) : super(key: key);

  @override
  _MaskState createState() => _MaskState();
}

class _MaskState extends State<Mask> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Route route = MaterialPageRoute(builder: (context) => Home());
        Navigator.pushReplacement(context, route);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kottho Kotha"),
          leading: InkWell(
              child: Container(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: AspectRatio(
            aspectRatio: 7 / 10,
            child: BetterPlayer.network(
              "https://dl.dropbox.com/s/kt0kg5kagpusxfc/VID-20210930-WA0000.mp4?dl=0",
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 7 / 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
