import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final Color color;
  final Color selectedColor;
  final VoidCallback onTap;

  const CustomRadioButton({
    super.key,
    required this.color,
    required this.selectedColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = (selectedColor == color);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          // white space for selected button
          color: isSelected ? Colors.transparent : color,
          shape: BoxShape.circle,
          // border of selected button
          border: isSelected ? Border.all(color: color, width: 3) : null,
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
