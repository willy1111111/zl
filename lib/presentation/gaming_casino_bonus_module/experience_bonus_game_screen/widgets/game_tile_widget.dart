import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_tile_model.dart';

class GameTileWidget extends StatelessWidget {
  final GameTileModel gameTile;
  final VoidCallback? onTap;

  GameTileWidget({
    Key? key,
    required this.gameTile,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90.h,
        height: 90.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: _getBackgroundColors(),
          ),
          borderRadius: BorderRadius.circular(10.h),
          border: Border.all(
            width: 3.h,
            color: appTheme.transparentCustom,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: gameTile.imagePathOne?.value ?? '',
              height: gameTile.tileText?.value == '₱18' ? 54.h : 44.h,
              width: gameTile.tileText?.value == '₱18' ? 51.h : 50.h,
            ),
            SizedBox(height: 4.h),
            Text(
              gameTile.tileText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold2.copyWith(
                  color: _getTextColor(),
                  letterSpacing: 1.h,
                  height: gameTile.isOrangeBackground?.value ?? false
                      ? 1.21
                      : 1.14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  List<Color> _getBackgroundColors() {
    if (gameTile.isOrangeBackground?.value ?? false) {
      return [Color(0xFFCC5500), Color(0xFF994400)];
    }
    return [Color(0xFF2D5016), Color(0xFF1A3009)];
  }

  Color _getTextColor() {
    if (gameTile.isOrangeBackground?.value ?? false) {
      return appTheme.whiteCustom;
    }
    return Color(0xFFFDC609);
  }
}
