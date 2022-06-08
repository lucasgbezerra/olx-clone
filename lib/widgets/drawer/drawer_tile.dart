import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';


class DrawerTile extends StatelessWidget {
  final IconData? icon;
  final Image? imageIcon;
  final String title;
  final bool? highlighted;
  
  const DrawerTile({Key? key, this.icon, this.imageIcon, required this.title, this.highlighted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: icon != null
          ? Icon(
              icon,
              color: AppColors.black,
            )
          : imageIcon,
      title: Text(
        title,
        style: AppTextStyles.blackMidText,
      ),
    );
  }
}