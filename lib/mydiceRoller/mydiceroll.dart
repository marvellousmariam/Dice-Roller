import 'dart:math';

import 'package:flutter/material.dart';

var randomize = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var activeDice = 2;
  rollDice() {
    setState(() {
      activeDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/dice-$activeDice.png'),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: rollDice, child: const Text('Roll Dice'))
        ],
      ),
    );
  }
}
