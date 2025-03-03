import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/tabbar_view_widget.dart';
import 'package:e_commerce_shopping_app/presentation/widgets/tabbar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // define tab controller
  late TabController _tabController;

  // init the tabController
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // women text
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Women',
              style: TextStyleConstants.womenText,
            ),
          ),

          // tabbar titles
          TabbarWidget(tabController: _tabController),

          // tabbar data
          TabbarViewWidget(tabController: _tabController),
        ],
      ),
    );
  }
}
