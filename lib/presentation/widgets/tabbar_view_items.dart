// handbag items

import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:e_commerce_shopping_app/data/hand_bag_data.dart';
import 'package:e_commerce_shopping_app/presentation/screens/product_details_page.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/tabbar_view_item_card.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/tabbar_view_item_text.dart';
import 'package:flutter/material.dart';

class TabbarViewBagItems extends StatelessWidget {
  const TabbarViewBagItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12),
      itemCount: HandBagData.handBagDataListPublic.length,
      //  card items alignment and styling
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.72,
        crossAxisSpacing: 10,
        // mainAxisSpacing: 3,
      ),

      // build items
      itemBuilder: (context, index) {
        final bagData = HandBagData.handBagDataListPublic[index];

        return InkWell(
          onTap: () {
            // push to details page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(
                  backgroundColor: bagData.cardColor,
                  index: index,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              // tabbar data item card styling
              TabbarViewItemCard(index: index),

              // item text
              TabbarViewItemText(
                index: index,
                text: bagData.bagName,
                textStyle: TextStyleConstants.bagNameStyle,
              ),
              TabbarViewItemText(
                index: index,
                text: '\$${bagData.bagPrice.toString()}',
                textStyle: TextStyleConstants.bagPrice,
              ),
            ],
          ),
        );
      },
    );
  }
}
