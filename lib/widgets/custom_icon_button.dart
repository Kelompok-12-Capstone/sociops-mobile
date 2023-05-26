import 'package:flutter/material.dart';
import 'package:login_teast_new/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const CustomIconButton({
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: AppColors.backgroundColor, 
        child: IconButton(
          iconSize: 20,
          icon: Icon(
            icon,
            color: color, 
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
