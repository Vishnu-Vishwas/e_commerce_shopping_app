import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class BuynowWidget extends StatelessWidget {
  final Color color;
  const BuynowWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.5,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(color),
          shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        ),
        child: Text(
          'BUY NOW',
          style: TextStyleConstants.buyNowStyle,
        ),
      ),
    );
  }
}
