import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "talabat",
                      style: TextStyle(
                          fontSize: 95,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
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
                            labelText: "Username",
                            prefixIcon: Icon(
                              Icons.person,
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
                          if (value != null && !value.contains("@gmail.com")) {
                            return "email must contain @gmail.com";
                          }
                        },keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "email",
                            prefixIcon: Icon(
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
                              Icons.lock,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                            labelText: "Phone number",
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.deepOrange,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
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
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(
            child: Text("talabat",
                style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))));
  }
}

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  // This widget
  int _currentIndex =0 ;
final tabs = [
Home(),
  Center(child: Text("Orders",style: TextStyle(fontSize: 20),)),
  Center(child: Text("Vouchers",style: TextStyle(fontSize: 20),)),
  Center(child: Text("Offers",style: TextStyle(fontSize: 20),)),
  Center(child: Text("Profile",style: TextStyle(fontSize: 20),)),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Vouchers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Offers'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        } ,
      ),
      body:tabs[_currentIndex],
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
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl6JPaMyl7e0oZfSdBa84_MTOUWwR50niJlLF79QPOlAIEYlSwWcWLG35W3EFI0iGzWFc&usqp=CAU"),
                radius: 35,
              ),
              SizedBox(
                width: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text(
                    "Nour Hesham",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text(
                    "Talabat",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  ),
                ),
                suffixIcon: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepOrange,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 30,
                    icon: Icon(
                      Icons.search,
                    ),
                    onPressed: () {},
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35)),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.deepOrange,
            ),
            height: 150,
            margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Talabt Mart",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const Text(
                        "20-Minute Delivery",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Stock up your fridge in just 20 minutes",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        height: 35,
                        child: const Text("Shop Now"),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 134,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.transparent, BlendMode.dstOut),
                    child: Image.asset('images/cart2.jpg',
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Categories",
                style: TextStyle(color: Colors.black54, fontSize: 25,fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 8,),
                Container(
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/pizza.jpg",fit: BoxFit.fitHeight,)
                    )
                ), SizedBox(width: 8,),
                Container(
                    width: 140,
                    height: 140,
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/Chicken.jpg",fit: BoxFit.fitHeight,))),
                SizedBox(width: 8,),
                Container(
                    width: 140,
                    height: 140,
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/Fish.jpg",fit: BoxFit.fitHeight,))),
                SizedBox(width: 8,),
                Container(
                    width: 140,
                    height: 140,
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/Macaroni (1).jpg",fit: BoxFit.fitHeight,))),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 8,),
              Text("Offers",style: TextStyle(color: Colors.black54, fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(width: MediaQuery.of(context).size.width/2,),
              Text("View all",style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt_outlined,color: Colors.deepOrange,size: 30,))
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 8, 18, 8),
            width: MediaQuery.of(context).size.width, // Set width to screen width
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/Offer.jpg', // Replace with your image path
                fit: BoxFit.cover, // Adjust the fit based on your needs
              ),
            ),),
        ],
      ),
    ),
  ),
);
  }

}