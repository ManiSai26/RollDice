import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  final String msg;

  const StyledText({super.key, required this.msg});
  @override
  Widget build(context) {
    return Text(
      msg,
      style: const TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
    );
  }
}
