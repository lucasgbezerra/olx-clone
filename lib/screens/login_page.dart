import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  Widget _filledButton(
      {Image? icon,
      required String label,
      required Color color,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon ?? SizedBox.shrink(),
            Expanded(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  label,
                  style: AppTextStyles.btnFillText,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _inputText(bool isObscure) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: isObscure ? Icon(Icons.visibility) : null,
        suffixIconColor: AppColors.grey,
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          children: [
            _filledButton(
              icon: Image.asset('assets/facebook-icon.png',
                  height: 30, width: 30),
              label: "Entrar com o Facebook",
              color: AppColors.facebookBlue,
              onTap: () {},
            ),
            _filledButton(
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
            _inputText(false),
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
            _inputText(true),
            _filledButton(
              label: "Entrar",
              color: AppColors.orange,
              onTap: () {},
            ),
            SizedBox(height: 20),
            Text.rich(TextSpan(
              text: "Não tem conta? ", 
              style: AppTextStyles.greyMidText,
              children: [
                TextSpan(
                  text: "Cadastre-se",
                  style: AppTextStyles.purpleMidBoldText
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}
