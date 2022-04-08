import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  final Map<String, dynamic> categories = {
    'Todas as categorias': Image.asset(
      'assets/olx-logo.png',
      width: 24,
      height: 24,
    ),
    'Auto e peças': Icons.directions_car_outlined,
    'Imóveis': Icons.house_outlined,
    'Eletrônicos e celulares': Icons.phone_android_outlined,
    'Para a sua casa': Icons.bed,
    'Moda e beleza': Icons.checkroom,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        leading: BackButton(color: AppColors.white),
        title: Text(
          "Todas as categorias",
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: ListView(
        children: categories.entries.map((e) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: e.key == "Todas as categorias"
                            ? e.value
                            : Icon(
                                e.value,
                                color: AppColors.grey,
                              ),
                      ),
                      Text(
                        e.key,
                        style: AppTextStyles.smallRobotoOpaque,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
