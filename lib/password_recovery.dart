import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  PasswordRecovery({super.key});

  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 128, 217, 198),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'بازیابی رمز عبور',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.fromLTRB(60, 5, 60, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Image(
                  image: AssetImage('images/password.jpg'),
                ),
                const PasswordInput()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: 
        <Widget>[
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'رمز عبور قبلی',
              
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'رمز عبور اشتباه می باشد';
              }
              return null;
            },
          ),
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'رمز عبور جدید',
              
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'رمز عبور اشتباه می باشد';
              }
              return null;
            },
          ),
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'تکرار رمز عبور جدید',
              
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'رمز عبور اشتباه می باشد';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                }
              },
              child: const Text(
                'تایید',
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: Size(80.0, 40.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

