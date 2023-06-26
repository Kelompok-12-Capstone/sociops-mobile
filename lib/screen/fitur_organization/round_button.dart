import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color buttonColor;
  final Color iconColor;
  final IconData icon;
  final void Function()? onPressed;

  const RoundButton({
    super.key,
    required this.buttonColor,
    required this.iconColor,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        color: iconColor,
        onPressed: onPressed,
      ),
    );
  }
}
