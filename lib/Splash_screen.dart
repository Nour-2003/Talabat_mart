import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Main_Screen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Mainscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange,
      // ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(
            child: Text("talabat",
                style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    fontFamily: "test3",
                    color: Colors.white))));
  }
}
