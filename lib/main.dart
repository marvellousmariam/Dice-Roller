import 'package:flutter/material.dart';
import 'package:flutter_udemy/mydiceRoller/gradientBackground.dart';

void main() {
  runApp(const MyDiceRoller());
}

class MyDiceRoller extends StatelessWidget {
  const MyDiceRoller({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Marvellous Dice Roller',
          ),
        ),
        body: const GradientBackground(),
      ),
    );
  }
}
