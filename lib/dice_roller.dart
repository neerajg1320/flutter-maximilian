import 'dart:math';
import 'package:flutter/material.dart';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;

  rollDice() {
    setState(() {
      diceRoll = Random().nextInt(6) + 1;
    });
    
    print('rollDice: called');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-images/dice-$diceRoll.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}