import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Splash_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordtobescured = true;
  bool? ischecked = false;
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "talabat",
                      style: TextStyle(fontSize: 60,color: Colors.deepOrange,fontWeight: FontWeight.bold,fontFamily: "test3"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up for free",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value != null && value.length < 5) {
                            return "User name must be more than 5 characters";
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            labelText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != null && !value.endsWith("@gmail.com")) {
                            return "email must contain @gmail.com";
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            labelText: "E-mail",
                            prefixIcon: Icon(size: 30,
                              Icons.email,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: passwordtobescured,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            labelText: "Password",
                            suffixIcon: IconButton(
                                icon: Icon(passwordtobescured
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    passwordtobescured = !passwordtobescured;
                                  });
                                }),
                            prefixIcon: Icon(
                              Icons.lock,size: 30,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != null &&
                              (value.length != 11 || !value.startsWith("01"))) {
                            return "Please enter a valid phone number starting with '01' and containing exactly 11 digits";
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            labelText: "Phone number",
                            prefixIcon: Icon(
                              Icons.phone,size: 30,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.deepOrange,
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.deepOrange;
                                }
                                return Colors.grey; // Color when unchecked
                              },
                            ),
                            checkColor: Colors.white,
                            value: ischecked,
                            onChanged: (bool? value) {
                              setState(() {
                                ischecked = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember Me ",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Splash()));
                                } else {
                                  print("Ok");
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                              child: Text(
                                "Create Acount ",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.deepOrange,
                              height: 47,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
