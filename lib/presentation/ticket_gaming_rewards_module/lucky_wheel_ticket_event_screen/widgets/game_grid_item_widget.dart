import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/game_grid_item_model.dart';

class GameGridItemWidget extends StatelessWidget {
  final GameGridItemModel game;

  GameGridItemWidget({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.h,
      child: Column(
        children: [
          Container(
            width: 88.h,
            height: 88.h,
            decoration: BoxDecoration(
              color: (game.isLogo?.value ?? false) ? Color(0xFF30353A) : null,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                if (!(game.isLogo?.value ?? false))
                  CustomImageView(
                    imagePath: game.gameImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                if (game.isLogo?.value ?? false)
                  Center(
                    child: CustomImageView(
                      imagePath: game.logoPath?.value ?? '',
                      height: 20.h,
                      width: 56.h,
                    ),
                  ),
                if (game.overlayImagePath?.value != null)
                  CustomImageView(
                    imagePath: game.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                if (game.overlayIconPath?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: game.overlayIconPath?.value ?? '',
                      height: 34.h,
                      width: 18.h,
                    ),
                  ),
                if (game.specialEffectPath?.value != null)
                  CustomImageView(
                    imagePath: game.specialEffectPath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                  ),
                if ((game.badgeCount?.value ?? 0) > 0)
                  Positioned(
                    top: 64.h,
                    right: 15.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${game.badgeCount?.value ?? 0}',
                          style: TextStyleHelper.instance.body12Black
                              .copyWith(letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if ((game.title?.value ?? '').isNotEmpty)
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Text(
                game.title?.value ?? '',
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.colorFF8089, shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    blurRadius: 2.h,
                    color: appTheme.blackCustom,
                  ),
                ]),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
