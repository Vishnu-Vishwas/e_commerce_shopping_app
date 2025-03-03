// Cart items count

import 'package:flutter/material.dart';

class CartItemButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onClick;
  const CartItemButton({super.key, required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black12),
      ),
      child: IconButton(
        onPressed: onClick,
        icon: Icon(
          icon,
          size: 18,
        ),
      ),
    );
  }
}
