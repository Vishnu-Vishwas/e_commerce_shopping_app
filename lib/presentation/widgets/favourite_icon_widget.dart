import 'package:flutter/material.dart';

class FavouriteIconWidget extends StatelessWidget {
  const FavouriteIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Item added to Favourite')));
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.red,
        ),
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
    );
  }
}
