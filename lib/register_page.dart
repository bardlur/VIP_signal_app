import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        // title: Text(
        //   '',
        //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        // ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.fromLTRB(60, 5, 60, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Image(
                  image: AssetImage(
                    'images/register.jpg',
                  ),
                ),
                SizedBox(height: 30,),
                FormExample()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
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
              hintText: 'نام و نام خانوادگی', 
            ),
          ),
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'شماره موبایل',
            ),
          ),
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'ایمیل',
            ),
          ),
          TextFormField(
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: 'رمز عبور',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return ' رمز عبور مجاز نمی باشد';
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
              child: const Text('ثبت نام'),
              style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: Size(100.0, 40.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}