import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24.0,
        height: 24.0,
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isChecked ? AppColors.primaryColor : Color(0XFFDCDEDE),
            width: 1.50,
          ),
        ),
        child: isChecked
            ? const Icon(Icons.check, size: 18.0, color: Colors.white)
            : const SizedBox(),
      ),
    );
  }
}
