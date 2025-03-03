import 'package:e_commerce_shopping_app/presentation/widgets/app_bar_icons_style_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  const AppBarWidget({super.key, this.backgroundColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,

      // leading icon
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: AppBarIconsStyleWidget(
          icon: Icons.arrow_back_sharp,
          iconColor: iconColor,
        ),
      ),

      // action icons
      actions: [
        // search icon
        IconButton(
          onPressed: () {},
          icon: AppBarIconsStyleWidget(
            icon: Icons.search_rounded,
            iconColor: iconColor,
          ),
        ),
        // cart icon
        IconButton(
          onPressed: () {},
          icon: AppBarIconsStyleWidget(
            icon: Icons.shopping_cart_outlined,
            iconColor: iconColor,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
