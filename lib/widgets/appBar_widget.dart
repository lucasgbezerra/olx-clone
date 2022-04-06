import 'package:flutter/material.dart';
import 'package:olx_clone/themes/app_colors.dart';
import 'package:olx_clone/themes/app_text_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({Key? key}) : super(key: key);

  Widget _bottomAppBarButton(size, String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: size.width / 3,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: AppTextStyles.purpleLargeText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            // textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _iconButtonTabBar(IconData icon, VoidCallback onPressed) {
    return IconButton(
      splashRadius: 20,
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: AppColors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: AppColors.purple,
      actions: [
        _iconButtonTabBar(Icons.search, (){}),
        _iconButtonTabBar(Icons.notifications, (){}),
        _iconButtonTabBar(Icons.favorite_outline, (){}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(size.width, 40),
        child: Container(
          color: AppColors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _bottomAppBarButton(size, 'DDD 61 - localização'),
            _bottomAppBarButton(size, 'Categorias'),
            _bottomAppBarButton(size, 'Filtros'),
          ]),
        ),
      ),
    );
  }

  @override
  
  Size get preferredSize => Size.fromHeight(100);
}
