// tabbar titles

import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  final TabController tabController;

  const TabbarWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,

      indicator: UnderlineTabIndicator(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.black, width: 3),
        insets: EdgeInsets.only(right: 32),
      ),

      // remove the divider
      dividerHeight: 0,

      // label style
      labelPadding: EdgeInsets.only(bottom: 5),
      labelColor: Colors.black,

      // unselected text
      unselectedLabelColor: Colors.black38,

      tabs: [
        Text('Hand bag', style: TextStyleConstants.tabBarTitleConst),
        Text('Jewellery', style: TextStyleConstants.tabBarTitleConst),
        Text('Foot wear', style: TextStyleConstants.tabBarTitleConst),
        Text('Dresses', style: TextStyleConstants.tabBarTitleConst),
      ],
    );
  }
}
