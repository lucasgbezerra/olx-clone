import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';
import 'package:olx_clone/widgets/drawer/drawer_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.7,
      child: Drawer(
        backgroundColor: AppColors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 100,
                  color: AppColors.purple,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Perfil do usuário, sem usuário logado
                      Icon(
                        Icons.person_outline,
                        color: AppColors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Acesse sua conta agora!",
                            style: AppTextStyles.whiteMidBoldText,
                          ),
                          Text(
                            "Clique aqui",
                            style: AppTextStyles.whiteSmallText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              DrawerTile(
                  imageIcon: Image.asset(
                    'assets/olx-logo.png',
                    width: 24,
                    height: 24,
                  ),
                  title: "Anúncios"),
              DrawerTile(icon: Icons.edit, title: "Inserir Anúncio"),
              DrawerTile(
                  icon: Icons.notifications_outlined, title: "Notificações"),
              DrawerTile(icon: Icons.chat_bubble_outline, title: "chat"),
              DrawerTile(icon: Icons.favorite_border, title: "Favoritos"),
              DrawerTile(icon: Icons.person_outline, title: "Minha Conta"),
              DrawerTile(icon: Icons.attach_money, title: "Pagamentos"),
              Divider(
                color: AppColors.grey,
                thickness: 1,
              ),
              DrawerTile(title: "Central de ajuda"),
              DrawerTile(title: "Sobre a olx"),
              DrawerTile(title: "Dicas de segurança"),
              DrawerTile(title: "Termos de uso"),
              DrawerTile(title: "Avalie na Google Play"),
              DrawerTile(title: "Curta no Facebook"),
            ],
          ),
        ),
      ),
    );
  }
}
