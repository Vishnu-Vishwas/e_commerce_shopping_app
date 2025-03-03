import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class AppBarIconsStyleWidget extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;

  const AppBarIconsStyleWidget({super.key, required this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor ?? ColorConstants.appBarIconColor,
      size: MediaQuery.sizeOf(context).width * 0.07,
    );
  }
}
