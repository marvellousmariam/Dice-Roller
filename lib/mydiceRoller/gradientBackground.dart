import 'package:flutter/material.dart';
import 'package:flutter_udemy/mydiceRoller/mydiceroll.dart';
import 'package:flutter_udemy/mydiceRoller/welcomepage.dart';

class GradientBackground extends StatefulWidget {
  const GradientBackground({super.key});

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

Widget activePage = Null as Widget;

class _GradientBackgroundState extends State<GradientBackground> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activePage = WelcomePage(switchPage);
  }

  void switchPage() {
    setState(() {
      activePage = const DiceRoll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 237, 74),
            Color.fromARGB(255, 221, 118, 0),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: activePage);
  }
}
