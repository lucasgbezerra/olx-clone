import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/widgets/appBar_widget.dart';
import 'package:olx_clone/widgets/drawer/drawer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
