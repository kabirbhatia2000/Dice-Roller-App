import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceState = 'asset/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceState = 'asset/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceState,
          width: 200,
        ),
        const SizedBox(height: 20),
        // child: AppTextStyle('Hello World!'),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              //  padding: const EdgeInsets.only(top:20)),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
