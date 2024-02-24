import 'dart:math';
import "package:flutter/material.dart";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int random = 1;
  void roll() {
    setState(() {
      random = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "Assets/Images/dice-${(random)}.png",
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: roll,
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 25,
              )),
          child: const Text("Roll the Dice"),
        )
      ],
    );
  }
}
