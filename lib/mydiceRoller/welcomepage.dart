import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  WelcomePage(this.switchPage, {super.key});
  void Function() switchPage;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Welcome to Marvel Dice Roller',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 40,
              ),
              OutlinedButton.icon(
                onPressed: switchPage,
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
                label: const Text(
                  'Start Rolling',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
