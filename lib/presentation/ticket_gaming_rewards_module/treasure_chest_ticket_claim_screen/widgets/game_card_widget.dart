import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameItem;
  final VoidCallback? onTap;

  GameCardWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          _buildGameCard(),
          SizedBox(height: 8.h),
          _buildGameTitle(),
        ],
      ),
    );
  }

  Widget _buildGameCard() {
    return Container(
      width: 88.h,
      height: 88.h,
      decoration: BoxDecoration(
        color: gameItem.isLogoGame?.value ?? false
            ? Color(0xFF30353A)
            : appTheme.transparentCustom,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Stack(
        children: [
          if (!(gameItem.isLogoGame?.value ?? false))
            CustomImageView(
              imagePath: gameItem.gameImagePath?.value ?? '',
              height: 88.h,
              width: 88.h,
              fit: BoxFit.cover,
            ),
          if (gameItem.isLogoGame?.value ?? false)
            Center(
              child: CustomImageView(
                imagePath: gameItem.gameImagePath?.value ?? '',
                height: 20.h,
                width: 56.h,
              ),
            ),
          if (gameItem.backgroundOverlayPath?.value.isNotEmpty ?? false)
            CustomImageView(
              imagePath: gameItem.backgroundOverlayPath?.value ?? '',
              height: 88.h,
              width: 88.h,
              fit: BoxFit.cover,
            ),
          if (gameItem.overlayIconPath?.value.isNotEmpty ?? false)
            Positioned(
              top: 0,
              left: 0,
              child: CustomImageView(
                imagePath: gameItem.overlayIconPath?.value ?? '',
                height: 34.h,
                width: 18.h,
              ),
            ),
          if (gameItem.specialEffectPath?.value.isNotEmpty ?? false)
            CustomImageView(
              imagePath: gameItem.specialEffectPath?.value ?? '',
              height: 88.h,
              width: 88.h,
            ),
          if (gameItem.badgeCount?.value != null &&
              (gameItem.badgeCount?.value ?? 0) > 0)
            Positioned(
              top: 64.h,
              right: 14.h,
              child: Container(
                width: 14.h,
                height: 14.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFF335,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${gameItem.badgeCount?.value ?? 0}',
                    style: TextStyleHelper.instance.body12Black
                        .copyWith(letterSpacing: 2),
                  ),
                ),
              ),
            ),
          if (gameItem.hasRedDot?.value ?? false)
            Positioned(
              top: 18.h,
              right: 61.h,
              child: Container(
                width: 14.h,
                height: 14.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFF335,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          if (gameItem.hasProgressBar?.value ?? false)
            Positioned(
              top: 55.h,
              right: 32.h,
              child: Container(
                width: 50.h,
                height: 1.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2548,
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4.h),
                      blurRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildGameTitle() {
    return Text(
      gameItem.title?.value ?? '',
      style: TextStyleHelper.instance.body13Bold
          .copyWith(color: appTheme.colorFF8089, shadows: [
        Shadow(
          color: appTheme.blackCustom,
          offset: Offset(0, 1.h),
          blurRadius: 2,
        ),
      ]),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
