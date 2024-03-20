import 'package:flutter/material.dart';

class SButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback pressAction;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;

  const SButton({
    Key? key,
    required this.buttonText,
    required this.pressAction,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white, // Default text color
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressAction,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: textColor, // Use foregroundColor instead of textColor
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(buttonText),
    );
  }
}
