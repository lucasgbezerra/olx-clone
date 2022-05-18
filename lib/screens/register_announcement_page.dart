import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';
import 'package:olx_clone/widgets/inputs/input_text_widget.dart';

class RegisterAnnouncementPage extends StatelessWidget {
  const RegisterAnnouncementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
          color: AppColors.white,
        ),
        title: Text(
          "Todas as categorias",
          style: AppTextStyles.appBarTitle,
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Limpar campos
            },
            child: Text(
              "LIMPAR",
              style: AppTextStyles.whiteMidBoldText,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            // Substituir por um quadrado pontilhado
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.purple,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.purple,
                    size: 50,
                  ),
                  Text(
                    "Incluir fotos",
                    style: AppTextStyles.purpleMidBoldText,
                  ),
                  Text(
                    "0 de 6 adicionadas",
                    style: AppTextStyles.greyMidText,
                  )
                ],
              ),
            ),

            InputTextWidget(
              title: "Título do Anúncio*",
              controller: TextEditingController(),
            )
          ],
        ),
      ),
    );
  }
}
