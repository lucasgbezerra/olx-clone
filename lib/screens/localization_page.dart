import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';
import 'package:olx_clone/widgets/list_tile_widget.dart';

class LocalizationPage extends StatelessWidget {
  LocalizationPage({Key? key}) : super(key: key);
  final List states = [
    'Minha localização atual',
    'Acre',
    'Alagoas',
    'Amapá',
    'Amazonas',
    'Bahia',
    'Ceará',
    'Distrito Federal',
    'Espírito Santo',
    'Goiás',
    'Maranhão',
    'Mato Grosso',
    'Mato Grosso do Sul',
    'Minas Gerais',
    'Pará',
    'Paraíba',
    'Paraná',
    'Pernambuco',
    'Piauí',
    'Rio de Janeiro',
    'Rio Grande do Norte',
    'Rio Grande do Sul',
    'Rondônia',
    'Roraima',
    'Santa Catarina',
    'São Paulo',
    'Sergipe',
    'Tocantins',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        leading: BackButton(color: AppColors.white),
        title: Text(
          "Região",
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: ListView(
        children: states.map((e) {
          return ListTileWidget(
            icon: e == 'Minha localização atual' ? Icons.gps_fixed : null,
            text: e,
          );
        }).toList(),
      ),
    );
  }
}
