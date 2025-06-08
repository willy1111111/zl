import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  GameItemWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  final GameItemModel gameItem;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(children: [
          _buildGameCard(),
          SizedBox(height: 10.h),
          _buildGameTitle(),
        ]));
  }

  Widget _buildGameCard() {
    return Container(
        height: 88.h,
        width: 88.h,
        child: Stack(children: [
          _buildMainImage(),
          if (gameItem.overlayImage?.value.isNotEmpty == true)
            _buildOverlayImage(),
          if (gameItem.specialEffect?.value.isNotEmpty == true)
            _buildSpecialEffect(),
          _buildOverlayIcon(),
          if (gameItem.gameType?.value == GameType.withBadge)
            _buildNotificationBadge(),
          if (gameItem.gameType?.value == GameType.withProgress)
            _buildProgressIndicator(),
          if (gameItem.gameType?.value == GameType.withRedDot)
            _buildRedDotIndicator(),
        ]));
  }

  Widget _buildMainImage() {
    if (gameItem.gameType?.value == GameType.placeholder) {
      return Container(
          height: 88.h,
          width: 88.h,
          decoration: BoxDecoration(
              color: appTheme.colorFF3035,
              borderRadius: BorderRadius.circular(4.h)),
          child: Center(
              child: CustomImageView(
                  imagePath: gameItem.logoImage?.value ?? '',
                  height: 20.h,
                  width: 56.h)));
    }

    return CustomImageView(
        imagePath: gameItem.gameImage?.value ?? '',
        height: 88.h,
        width: 88.h,
        fit: BoxFit.cover,
        radius: BorderRadius.circular(4.h));
  }

  Widget _buildOverlayImage() {
    return Positioned(
        top: 0,
        left: 0,
        child: CustomImageView(
            imagePath: gameItem.overlayImage?.value ?? '',
            height: 88.h,
            width: 88.h,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(4.h)));
  }

  Widget _buildSpecialEffect() {
    return Positioned(
        top: 0,
        left: 0,
        child: CustomImageView(
            imagePath: gameItem.specialEffect?.value ?? '',
            height: 88.h,
            width: 88.h));
  }

  Widget _buildOverlayIcon() {
    return Positioned(
        top: 0,
        left: 0,
        child: CustomImageView(
            imagePath: gameItem.overlayIcon?.value ?? '',
            height: 34.h,
            width: 18.h));
  }

  Widget _buildNotificationBadge() {
    return Positioned(
        top: 64.h,
        right: 14.h,
        child: Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFF335, shape: BoxShape.circle),
            child: Center(
                child: Text('${gameItem.badgeCount?.value ?? 0}',
                    style: TextStyleHelper.instance.body12Black
                        .copyWith(letterSpacing: 2)))));
  }

  Widget _buildProgressIndicator() {
    return Positioned(
        top: 55.h,
        right: 32.h,
        child: Container(
            height: 50.h,
            width: 1.h,
            decoration: BoxDecoration(color: appTheme.colorFF2548, boxShadow: [
              BoxShadow(color: appTheme.colorFF8888, offset: Offset(0, 4.h)),
            ])));
  }

  Widget _buildRedDotIndicator() {
    return Positioned(
        top: 90.h,
        right: 61.h,
        child: Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFF335, shape: BoxShape.circle)));
  }

  Widget _buildGameTitle() {
    return Text(gameItem.title?.value ?? '',
        style: TextStyleHelper.instance.body13Bold
            .copyWith(color: appTheme.colorFF8089, shadows: [
          Shadow(
              color: appTheme.blackCustom,
              offset: Offset(0, 1.h),
              blurRadius: 2.h),
        ]),
        textAlign: TextAlign.center);
  }
}
