import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  late final  String image_name;
  Product({required this.image_name});
  @override
  Widget build(BuildContext context) {
return   Container(
    width: 140,
    height: 140,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image_name,
          fit: BoxFit.fitHeight,
        )));

  }

}