import 'package:flutter/material.dart';

import 'cart_item_button.dart';
import 'favourite_icon_widget.dart';

class ItemCountWidget extends StatefulWidget {
  const ItemCountWidget({super.key});

  @override
  State<ItemCountWidget> createState() => _ItemCountWidgetState();
}

class _ItemCountWidgetState extends State<ItemCountWidget> {
  int itemCount = 1;

  // increment the count
  void incrementItemCount() {
    setState(() {
      itemCount = itemCount + 1;
      print('item clicked, count is $itemCount');
    });
  }

  // decrement the count
  void decrementItemCount() {
    setState(() {
      if (itemCount > 1) {
        itemCount = itemCount - 1;
      }
      print('item clicked, count is $itemCount');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemButton(icon: Icons.remove, onClick: decrementItemCount),
        SizedBox(width: 10),
        Text(
          '$itemCount',
          style: TextStyle(fontSize: 25, color: Colors.black54),
        ),
        SizedBox(width: 10),
        CartItemButton(icon: Icons.add, onClick: incrementItemCount),
        const Spacer(),
        FavouriteIconWidget(),
      ],
    );
  }
}
