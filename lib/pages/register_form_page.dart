import 'package:flutter/material.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({super.key});

  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Form'),
          centerTitle: true,
        ),
        body: Form(
          child: ListView(padding: EdgeInsets.all(16), children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Full name *',
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number *',
                hintText: 'Enter your email',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email *',
                hintText: 'Enter your email',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Life Story',
                hintText: 'Enter your story',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password *',
                hintText: 'Enter your password',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password *',
                hintText: 'Confirm your password',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit Form', style: TextStyle(color: Colors.white)),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            ),
          ]),
        ));
  }
}
