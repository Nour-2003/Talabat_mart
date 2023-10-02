import 'dart:async';
import 'package:flutter/material.dart';
import 'Login_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



// final _formkey = GlobalKey<FormState>();
// return Scaffold(
// body: SafeArea(
// child: Column(
// children: [
// Form(
// key: _formkey,
// child: TextFormField(
// validator: (value) {
// if (value != null) {
// if (value.length <= 8) {
// return "Enter a password contain 8 char or more";
// }
// }
// },
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20)),
// labelText: "Password",
// prefixIcon: Icon(Icons.password)),
// ),
// ),
// SizedBox(
// height: 30,
// child: ElevatedButton(
// onPressed: () {
// if( _formkey.currentState!.validate())
// {
// print("ok");
// }
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => Screen2()));
// },
// child: Text("Submit"),
// ),
// )
// ],
// ),
// ),
// );

