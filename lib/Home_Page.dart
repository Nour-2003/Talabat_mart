import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session3/Product.dart';
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
                          borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.transparent, BlendMode.dstOut),
                        child: Image.asset('images/cart2.jpg',
                            fit: BoxFit.fitHeight,),
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
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
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
                    SizedBox(
                      width: 8,
                    ),
Product(image_name: 'images/pizza.jpg'),
                    SizedBox(
                      width: 8,
                    ),
Product(image_name: "images/Chicken.jpg"),
                    SizedBox(
                      width: 8,
                    ),
Product(image_name: "images/Fish.jpg"),
                    SizedBox(
                      width: 8,
                    ),
                    Product(image_name: "images/Macaroni (1).jpg"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Offers",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.deepOrange,
                        size: 30,
                      ))
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                width: MediaQuery.of(context)
                    .size
                    .width, // Set width to screen width
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/Offer.jpg', // Replace with your image path
                    fit: BoxFit.cover, // Adjust the fit based on your needs
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}