import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const InputTextWidget(
      {Key? key, required this.controller, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: AppTextStyles.blackMidBoldText,
          ),
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
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
