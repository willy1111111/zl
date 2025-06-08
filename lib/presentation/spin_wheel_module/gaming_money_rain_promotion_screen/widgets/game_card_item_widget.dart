import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameItem;
  final VoidCallback? onTap;

  const GameCardItemWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: 88.h,
            height: 88.h,
            child: Stack(children: [
              if (gameItem.isLogoCard?.value ?? false)
                _buildLogoCard()
              else
                _buildGameCard(),
              if (gameItem.hasNotificationBadge?.value ?? false)
                _buildNotificationBadge(),
              if (gameItem.hasTitle?.value ?? false) _buildGameTitle(),
            ])));
  }

  Widget _buildLogoCard() {
    return Container(
        width: 88.h,
        height: 88.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF3035,
            borderRadius: BorderRadius.circular(4.h)),
        child: Stack(children: [
          Center(
              child: CustomImageView(
                  imagePath: ImageConstant.imgLogowj931,
                  height: 20.h,
                  width: 56.h)),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 34.h,
                  height: 18.h,
                  decoration: BoxDecoration(
                      color: appTheme.colorFF4147,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          bottomRight: Radius.circular(6.h)),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.blackCustom.withAlpha(128),
                            blurRadius: 2.h,
                            offset: Offset(0, 2.h)),
                      ]))),
        ]));
  }

  Widget _buildGameCard() {
    return Container(
        width: 88.h,
        height: 88.h,
        child: Stack(children: [
          if (gameItem.gameImagePath?.value.isNotEmpty ?? false)
            CustomImageView(
                imagePath: gameItem.gameImagePath?.value ?? '',
                height: 88.h,
                width: 88.h,
                fit: BoxFit.cover),
          if (gameItem.overlayImagePath?.value.isNotEmpty ?? false)
            CustomImageView(
                imagePath: gameItem.overlayImagePath?.value ?? '',
                height: 88.h,
                width: 88.h,
                fit: BoxFit.cover),
          if (gameItem.badgeImagePath?.value.isNotEmpty ?? false)
            Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                    imagePath: gameItem.badgeImagePath?.value ?? '',
                    height: 18.h,
                    width: 34.h)),
          if (gameItem.hasCustomOverlay?.value ?? false)
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 34.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.h),
                            bottomRight: Radius.circular(6.h)),
                        boxShadow: [
                          BoxShadow(
                              color: appTheme.blackCustom.withAlpha(128),
                              blurRadius: 2.h,
                              offset: Offset(0, 1.h)),
                        ]))),
        ]));
  }

  Widget _buildNotificationBadge() {
    return Positioned(
        top: 47.h,
        right: 11.h,
        child: Container(
            width: 14.h,
            height: 14.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFF335,
                borderRadius: BorderRadius.circular(7.h)),
            child: Center(
                child: Text(gameItem.notificationCount?.value ?? '1',
                    style: TextStyleHelper.instance.body12BlackArial
                        .copyWith(letterSpacing: 2.h)))));
  }

  Widget _buildGameTitle() {
    return Positioned(
        bottom: -18.h,
        left: 0,
        child: Container(
            width: 88.h,
            child: Text(gameItem.gameTitle?.value ?? '',
                style: TextStyleHelper.instance.body13BoldNotoSans
                    .copyWith(shadows: [
                  Shadow(
                      color: appTheme.blackCustom,
                      blurRadius: 2.h,
                      offset: Offset(0, 1.h)),
                ]),
                textAlign: TextAlign.center)));
  }
}
