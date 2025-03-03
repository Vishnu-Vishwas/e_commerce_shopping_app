// cart icon

import 'package:flutter/material.dart';

class CartIconWidget extends StatelessWidget {
  final Color color;

  const CartIconWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Item Added to cart!')));
      },
      child: Container(
        height: 60,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color),
        ),
        child: Icon(
          Icons.add_shopping_cart,
          color: color,
          size: 30,
        ),
      ),
    );
  }
}
