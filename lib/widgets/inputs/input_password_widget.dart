import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class InputPasswordWidget extends StatefulWidget {
  bool isObscure;
  final TextEditingController controller;
  InputPasswordWidget(
      {Key? key, this.isObscure = true, required this.controller})
      : super(key: key);

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        TextField(
          controller: widget.controller,
          obscureText: widget.isObscure,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  widget.isObscure = !widget.isObscure;
                });
              },
              icon: widget.isObscure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
            suffixIconColor: AppColors.grey,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 0.7,
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.purple,
                width: 0.7,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
