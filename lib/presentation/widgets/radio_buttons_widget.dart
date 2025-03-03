import 'package:e_commerce_shopping_app/presentation/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class RadioButtonsWidget extends StatefulWidget {
  const RadioButtonsWidget({super.key});

  @override
  State<RadioButtonsWidget> createState() => _RadioButtonsWidgetState();
}

class _RadioButtonsWidgetState extends State<RadioButtonsWidget> {
  Color selectedColor = Colors.blue;

  void _onColorSelected(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRadioButton(
          color: Colors.blue,
          selectedColor: selectedColor,
          onTap: () => _onColorSelected(Colors.blue),
        ),
        CustomRadioButton(
          color: Colors.yellow,
          selectedColor: selectedColor,
          onTap: () => _onColorSelected(Colors.yellow),
        ),
        CustomRadioButton(
          color: Colors.red,
          selectedColor: selectedColor,
          onTap: () => _onColorSelected(Colors.red),
        ),
      ],
    );
  }
}
