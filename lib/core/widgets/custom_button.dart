import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onprerssed,
    required this.title,
    required this.backgroundColor,
    required this.fontColor,
  });
  final VoidCallback onprerssed;
  final String title;
  final Color backgroundColor;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        onPressed: onprerssed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Text(title, style: TextStyle(color: fontColor)),
      ),
    );
  }
}
