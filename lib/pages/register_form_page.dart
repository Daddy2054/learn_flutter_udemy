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
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number *',
                hintText: 'Enter your phone',
                helperText: 'Phone format: (XXX)XXX-XXXX',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email *',
                hintText: 'Enter your email',
                icon: Icon(Icons.email),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Life Story',
                hintText: 'Enter your story',
                helperText: 'Keep it short, this is just a demo.',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password *',
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                icon: Icon(Icons.security),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password *',
                hintText: 'Confirm your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                icon: Icon(Icons.border_color),
              ),
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
