import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building layouts'),
          centerTitle: true,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Icon(Icons.airplay, color: Colors.red, size: 200),
            Positioned(
              top: 60,
              left: 45,
              child: Text(
                'TV',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
