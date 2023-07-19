import 'package:flutter/material.dart';

Widget getBlogePost({
  required String imageName, 
  required String title, 
  required double BuyPrice, 
  required double SellPrice}) {

  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(height: 10),
      Text('برای 14 آبان $title :سیگنال خرید ',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$SellPrice :فروش ',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w100, color: Colors.red),
          ),
          Icon(
            Icons.price_check,
            size: 20,
            color: Colors.red
          ),
          SizedBox(width: 20),
          Text(
            '$BuyPrice :خرید ',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w100, color: Colors.green),
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.green
          ),
        ],
      ),
    ],
  );
}
