import 'package:flutter/material.dart';

class HandBagData {
  final Color cardColor;
  final String bagName;
  final String bagCategory;
  final double bagPrice;
  final String bagDescription;

  HandBagData({
    required this.cardColor,
    required this.bagName,
    required this.bagCategory,
    required this.bagPrice,
    required this.bagDescription,
  });

  // getting data without modifying the _handBagDataList
  static List<HandBagData> get handBagDataListPublic {
    return _handBagDataList;
  }

  static final List<HandBagData> _handBagDataList = [
    HandBagData(
      cardColor: Color(0xFF595959),
      bagName: 'Aristocratic Hand Bag',
      bagCategory: 'Belt Bag',
      bagPrice: 33.0,
      bagDescription:
          'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi...',
    ),
    HandBagData(
      cardColor: Color(0xFFd4c358),
      bagName: 'Kattee Women\'s Shoulder Bag',
      bagCategory: 'Shoulder Bag',
      bagPrice: 45.5,
      bagDescription:
          'Elegant and stylish shoulder bag made with premium leather, designed for everyday use with a classic touch.',
    ),
    HandBagData(
      cardColor: Color(0xFFb8aea4),
      bagName: 'SIFINI Women Fashion Bag',
      bagCategory: 'Hand Bag',
      bagPrice: 29.9,
      bagDescription:
          'A stylish and trendy handbag perfect for casual outings and special occasions, featuring high-quality craftsmanship.',
    ),
    HandBagData(
      cardColor: Color(0xFFb5c5c5),
      bagName: 'Women\'s Bag Black',
      bagCategory: 'Tote Bag',
      bagPrice: 55.0,
      bagDescription:
          'Spacious tote bag with a minimalistic design, suitable for work or shopping with ample storage space.',
    ),
    HandBagData(
      cardColor: Color(0xFFa9a3a1),
      bagName: 'Kenneth Cole Handbag',
      bagCategory: 'Classic Handbag',
      bagPrice: 75.0,
      bagDescription:
          'A luxurious handbag from Kenneth Cole featuring a sleek design and high-quality leather.',
    ),
    HandBagData(
      cardColor: Color(0xFF303030),
      bagName: 'Chanel Classic Handbag',
      bagCategory: 'Luxury Handbag',
      bagPrice: 120.0,
      bagDescription:
          'Iconic Chanel handbag with a timeless design, crafted from high-quality grained calfskin for a sophisticated look.',
    ),
    HandBagData(
      cardColor: Color(0xFFbda56c),
      bagName: 'Ladies Handbag',
      bagCategory: 'Everyday Handbag',
      bagPrice: 40.0,
      bagDescription:
          'A versatile handbag designed for everyday use, offering comfort and style in one.',
    ),
    HandBagData(
      cardColor: Color(0xFF3a3a3a),
      bagName: 'Crocodile Women\'s Handbag Crossbody',
      bagCategory: 'Crossbody Bag',
      bagPrice: 60.0,
      bagDescription:
          'A fashionable crossbody bag with a crocodile pattern, perfect for an elegant and trendy look.',
    ),
    HandBagData(
      cardColor: Color(0xFF50557f),
      bagName: 'Blue Women\'s Handbag',
      bagCategory: 'Hand Bag',
      bagPrice: 35.0,
      bagDescription:
          'A stylish blue handbag made from premium materials, offering both fashion and functionality.',
    ),
    HandBagData(
      cardColor: Color(0xFFf7dbbd),
      bagName: 'Cream Handbag',
      bagCategory: 'Hand Bag',
      bagPrice: 28.5,
      bagDescription:
          'Soft-textured cream handbag with a simple yet elegant design, ideal for casual and formal occasions.',
    ),
  ];
}
