// tabbar data item card styling

import 'package:flutter/material.dart';

import '../../data/hand_bag_data.dart';

class TabbarViewItemCard extends StatelessWidget {
  final int index;
  const TabbarViewItemCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.24,
      child: Card(
        // margin: EdgeInsets.only(right: 12, bottom: 6),
        color: HandBagData.handBagDataListPublic[index].cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          'assets/handbag_images/${index + 1}.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
