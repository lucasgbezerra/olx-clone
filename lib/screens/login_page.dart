import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';
import 'package:olx_clone/widgets/buttons/rounded_button_widget.dart';
import 'package:olx_clone/widgets/input_text_widget.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: AppColors.white),
        title: Text(
          "Entrar",
          style: AppTextStyles.appBarTitle,
        ),
        backgroundColor: AppColors.purple,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          children: [
            RoundedButtonWidget(
              icon: Image.asset('assets/facebook-icon.png',
                  height: 30, width: 30),
              label: "Entrar com o Facebook",
              color: AppColors.facebookBlue,
              onTap: () {},
            ),
            RoundedButtonWidget(
              icon:
                  Image.asset('assets/google-icon.png', height: 30, width: 30),
              label: "Entrar com o Google",
              color: AppColors.googleBlue,
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 16),
              child: Text(
                "ou",
                style: AppTextStyles.smallRobotoOpaque,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "E-mail",
                style: AppTextStyles.blackMidBoldText,
              ),
            ),
            InputTextWidget(isObscure: false, controller: emailController),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Senha",
                    style: AppTextStyles.blackMidBoldText,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Esqueceu sua senha?",
                      style: AppTextStyles.purpleMidBoldText,
                    ),
                  ),
                ],
              ),
            ),
            InputTextWidget(isObscure: true, controller: passwordController,),
            RoundedButtonWidget(
              label: "Entrar",
              color: AppColors.orange,
              onTap: () {},
            ),
            SizedBox(height: 20),
            // Texto composto com parte do texto clicavel utilizando o widget TapGestureRecognizer()
            Text.rich(TextSpan(
                text: "Não tem conta? ",
                style: AppTextStyles.greyMidText,
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: "Cadastre-se",
                      style: AppTextStyles.purpleMidBoldText)
                ]))
          ],
        ),
      ),
    );
  }
}
