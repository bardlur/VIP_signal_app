import 'package:flutter/material.dart';
import 'package:signal_vip_pp/register_page.dart';
import 'blog_page.dart';
import 'password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void NavigatorToPage(BuildContext context, page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext) {
          return page;
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120.0,
            ), 
            Text(
              'VIP ورود به حساب سیگنال',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
            ),
            Image(
              image: AssetImage('images/w.png'),
           ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                side: BorderSide(color: Colors.black, width: 2.0),
                primary: Colors.black,
              ),
            onPressed: () {
              NavigatorToPage(context, BlogScreen());
            }, 
            child: Text(
              'ورود به حساب',
              style: TextStyle(fontSize: 16),
              ),
            ), 
            ElevatedButton(
              onPressed: () {
                NavigatorToPage(context, RegisterPage());
              }, 
              child: 
              Text(
              'ثبت نام',
              style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: Size(200.0, 40.0),
              ),
            ),
          
            TextButton(
              onPressed: () {
                NavigatorToPage(context, PasswordRecovery());
              }, 
              child: Text(
                'فراموشی رمز عبور',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}