import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/app_bar_widget.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/buynow_widget.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/cart_icon_widget.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/item_count_widget.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/radio_buttons_widget.dart';
import 'package:flutter/material.dart';

import '../../data/hand_bag_data.dart';

class ProductDetailsPage extends StatelessWidget {
  final Color backgroundColor;
  final int index;
  const ProductDetailsPage({
    super.key,
    required this.backgroundColor,
    required this.index,
  });

  Future<Map<String, dynamic>> bagDetails() async {
    await Future.delayed(Duration(seconds: 3));
    final bag = HandBagData.handBagDataListPublic[index];

    return {
      'bagName': bag.bagName,
      'bagCategory': bag.bagCategory,
      'bagPrice': bag.bagPrice,
      'bagDescription': bag.bagDescription,
    };
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    final smallTextStyle = TextStyleConstants.smallFontWhite;
    final bigTextStyle = TextStyleConstants.bigFontWhite;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget(
        backgroundColor: backgroundColor,
        iconColor: Colors.white,
      ),
      body: FutureBuilder(
        future: bagDetails(),
        builder: (context, snapshot) {
          // fetching data - waiting state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.black54,
              ),
            );
          }

          // data error
          else if (snapshot.hasError) {
            return Center(child: Text("Error loading product details"));
          }

          // Handle null data safely
          else if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text("No Details"));
          }

          final snapShotBagData = snapshot.data!;

          // data
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${snapShotBagData['bagName']}',
                        style: smallTextStyle),
                    Text('${snapShotBagData['bagCategory']}',
                        style: bigTextStyle),
                    // SizedBox(height: 120),
                    SizedBox(height: height / 8),
                    Text('Price', style: smallTextStyle),
                    Text('\$${snapShotBagData['bagPrice']}',
                        style: bigTextStyle),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Card container
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height / 1.7,
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: height * 0.12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Color',
                                      style: TextStyleConstants.colorTextFont,
                                    ),
                                    RadioButtonsWidget(),
                                  ],
                                ),
                                SizedBox(width: width / 3),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Size',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Text(
                                      '12 cm',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Text(
                              '${snapShotBagData['bagDescription']}',
                              style: TextStyleConstants.bagDescriptionStyle,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),

                            SizedBox(height: 30),

                            // cart items count
                            ItemCountWidget(),
                            SizedBox(height: 25),

                            Row(
                              children: [
                                // Card Icon
                                CartIconWidget(color: backgroundColor),
                                SizedBox(width: 20),
                                // Buy now icon
                                BuynowWidget(color: backgroundColor),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    // Handbag image
                    Positioned(
                      top: -MediaQuery.of(context).size.height * 0.2,
                      left: MediaQuery.of(context).size.width * 0.35,
                      child: Image.asset(
                        'assets/handbag_images/${index + 1}.png',
                        scale: 7,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
