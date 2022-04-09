import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class ListTileWidget extends StatelessWidget {
  final dynamic? icon;
  final String text;
  // final Image? imageIcon;
  const ListTileWidget(
      {Key? key, this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                icon != null ? Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: icon is Image ? icon : 
                      Icon(
                        icon,
                        color: AppColors.grey,
                      ),
                ): const Padding(padding: EdgeInsets.only(left: 8)),
                
                Text(
                  text,
                  style: AppTextStyles.smallRobotoOpaque,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
