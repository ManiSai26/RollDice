import "package:first_app/Components/dice_roller.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer({super.key, required this.colors});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          transform: const GradientRotation(1.2),
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
