import 'package:flutter/material.dart';
import 'package:signal_vip_pp/costum_widges/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> lisBlogWidget = [
    getBlogePost(imageName: 'r.png',title: 'Ripple', BuyPrice: 17552, SellPrice: 18000),
    SizedBox(height: 50),
    getBlogePost(imageName: 'a.png',title: 'Alchemy pay', BuyPrice: 2100, SellPrice: 2250),
    SizedBox(height: 50),
    getBlogePost(imageName: 'c.png',title: 'Cosmos', BuyPrice: 51, SellPrice: 53),
    SizedBox(height: 50),
    getBlogePost(imageName: 's.png',title: 'Safe Moon', BuyPrice: 1687, SellPrice: 1920),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 128, 217, 198),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'VIP اخبار و سیگنال های ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[ 
                  ...lisBlogWidget,
                  SizedBox(height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, 
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}