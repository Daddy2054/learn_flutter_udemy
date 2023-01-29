import 'package:flutter/material.dart';

import 'pages/register_form_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'fORM EXAMPLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterFormPage(),
    );
  }
}