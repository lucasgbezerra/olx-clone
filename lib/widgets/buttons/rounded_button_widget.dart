import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String label;
  final Image? icon;
  final Color color;
  final VoidCallback onTap;

  const RoundedButtonWidget({ Key? key, required this.label, this.icon, required this.color, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}