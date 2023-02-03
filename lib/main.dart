import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => ColorProvider(), child: const AnimatedContainerApp()));

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  bool light = true;
  @override
  Widget build(BuildContext context) {
    ColorProvider state = Provider.of<ColorProvider>(context);
    return MaterialApp(
      home: Consumer<ColorProvider>(
        builder: (context, colorprovider, child) => Scaffold(
          appBar: AppBar(
            title: Text('Homework Provider',
                style: TextStyle(
                  color: colorprovider.newColor2,
                )),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,        
            children: [
              Center(
                child: AnimatedContainer(
                  // Use the properties stored in the State class.
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: colorprovider.newColor,
                             ),
                  // Define how long the animation should take.
                  duration: const Duration(seconds: 1),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              Switch(
                value: light,
                onChanged: (bool value) {
                  state.randomColor();
                  light = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorProvider extends ChangeNotifier {
  Color newColor = Colors.red;
  Color newColor2 = Colors.blue;
  void randomColor() {
    var random = Random();
    newColor = Color?.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    random = Random();
    newColor2 = Color?.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    notifyListeners();
  }
}
