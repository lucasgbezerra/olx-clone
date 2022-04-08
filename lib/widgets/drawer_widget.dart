import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  Widget _tile({IconData? icon, Image? imageIcon, required String title}) {
    return ListTile(
      onTap: (){},
      leading: icon != null
          ? Icon(
              icon,
              color: AppColors.black,
            )
          : imageIcon ?? null,
      title: Text(
        title,
        style: AppTextStyles.blackMidText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            _tile(
                imageIcon: Image.asset(
                  'assets/olx-logo.png',
                  width: 24,
                  height: 24,
                ),
                title: "Anúncios"),
            _tile(icon: Icons.edit, title: "Inserir Anúncio"),
            _tile(icon: Icons.notifications_outlined, title: "Notificações"),
            _tile(icon: Icons.chat_bubble_outline, title: "chat"),
            _tile(icon: Icons.favorite_border, title: "Favoritos"),
            _tile(icon: Icons.person_outline, title: "Minha Conta"),
            _tile(icon: Icons.attach_money, title: "Pagamentos"),
            Divider(
              color: AppColors.grey,
              thickness: 1,
            ),
            _tile(title: "Central de ajuda"),
            _tile(title: "Sobre a olx"),
            _tile(title: "Dicas de segurança"),
            _tile(title: "Termos de uso"),
            _tile(title: "Avalie na Google Play"),
            _tile(title: "Curta no Facebook"),
          ],
        ),
      ),
    );
  }
}
