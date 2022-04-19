import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class InputTextWidget extends StatefulWidget {
  final bool isObscure;
  final TextEditingController controller;
  final String title;
  const InputTextWidget(
      {Key? key,
      required this.isObscure,
      required this.controller,
      required this.title})
      : super(key: key);

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            widget.title,
            style: AppTextStyles.blackMidBoldText,
          ),
        ),
        TextField(
          controller: widget.controller,
          obscureText: isHidden,
          decoration: InputDecoration(
            suffixIcon: widget.isObscure
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: isHidden
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : null,
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