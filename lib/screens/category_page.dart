import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';
import 'package:olx_clone/widgets/list_tile_widget.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key}) : super(key: key);

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
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
          color: AppColors.white),
        title: Text(
          "Todas as categorias",
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: ListView(
        children: categories.entries.map((e) {
          return ListTileWidget(icon: e.value , text: e.key);
        }).toList(),
      ),
    );
  }
}
