import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({super.key});

  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool _hidePass = true;

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _storyController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _storyController.dispose();
    _passController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

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
              controller: _nameController,
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
              controller: _phoneController,
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
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email *',
                hintText: 'Enter your email',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _storyController,
              decoration: InputDecoration(
                labelText: 'Life Story',
                hintText: 'Enter your story',
                helperText: 'Keep it short, this is just a demo.',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            TextFormField(
              controller: _passController,
              decoration: InputDecoration(
                labelText: 'Password *',
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                ),
                icon: Icon(Icons.security),
              ),
              obscureText: _hidePass,
              maxLength: 8,
            ),
            TextFormField(
              controller: _confirmPassController,
              obscureText: _hidePass,
              maxLength: 8,
              decoration: InputDecoration(
                labelText: 'Confirm Password *',
                hintText: 'Confirm your password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                ),
                icon: Icon(Icons.border_color),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit Form', style: TextStyle(color: Colors.white)),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            ),
          ]),
        ));
  }

  void _submitForm() {
    print('Name: ${_nameController.text}');
    print('Phone: ${_phoneController.text}');
    print('Email: ${_emailController.text}');
    print('Story: ${_storyController.text}');
  }
}
