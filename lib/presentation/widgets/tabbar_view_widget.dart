// tabbar data

import 'package:e_commerce_shopping_app/presentation/widgets/tabbar_view_items.dart';
import 'package:flutter/material.dart';

class TabbarViewWidget extends StatelessWidget {
  final TabController tabController;

  const TabbarViewWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // items
      child: TabBarView(
        controller: tabController,
        children: [
          // items
          TabbarViewBagItems(),
          Center(child: Text('Jewellery bar content')),
          Center(child: Text('Foot wear bar content')),
          Center(child: Text('Dresses bar content')),
        ],
      ),
    );
  }
}
