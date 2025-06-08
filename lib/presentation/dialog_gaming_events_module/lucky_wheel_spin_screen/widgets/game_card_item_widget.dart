import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameCardModel;
  final VoidCallback? onTap;

  GameCardItemWidget({
    Key? key,
    required this.gameCardModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(children: [
          Container(
              width: 88.h,
              height: 88.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.h),
                  color: (gameCardModel.isLogoCard?.value ?? false)
                      ? Color(0xFF30353A)
                      : null),
              child: Stack(children: [
                if (!(gameCardModel.isLogoCard?.value ?? false))
                  CustomImageView(
                      imagePath: gameCardModel.gameImagePath?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h)),
                if (gameCardModel.isLogoCard?.value ?? false)
                  Center(
                      child: CustomImageView(
                          imagePath: gameCardModel.gameImagePath?.value ?? '',
                          height: 20.h,
                          width: 56.h)),
                if (gameCardModel.secondaryOverlayPath?.value != null)
                  CustomImageView(
                      imagePath:
                          gameCardModel.secondaryOverlayPath?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h)),
                if (gameCardModel.overlayImagePath?.value != null)
                  Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                          imagePath:
                              gameCardModel.overlayImagePath?.value ?? '',
                          height: gameCardModel.overlayHeight?.value ?? 18.h,
                          width: gameCardModel.overlayWidth?.value ?? 34.h)),
                if (gameCardModel.hasSpecialOverlay?.value ?? false)
                  CustomImageView(
                      imagePath: gameCardModel.specialOverlayPath?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover),
                if (gameCardModel.showNotificationDot?.value ?? false)
                  Positioned(
                      top: (gameCardModel.notificationText?.value != null)
                          ? 72.h
                          : 34.h,
                      right: (gameCardModel.notificationText?.value != null)
                          ? 0
                          : 27.h,
                      child: Container(
                          width: 14.h,
                          height: 14.h,
                          decoration: BoxDecoration(
                              color: appTheme.colorFFF335,
                              borderRadius: BorderRadius.circular(7.h)),
                          child: (gameCardModel.notificationText?.value != null)
                              ? Center(
                                  child: Text(
                                      gameCardModel.notificationText?.value ??
                                          '',
                                      style: TextStyleHelper
                                          .instance.body12BlackArial
                                          .copyWith(letterSpacing: 2)))
                              : null)),
                if (gameCardModel.showBadge?.value ?? false)
                  Positioned(
                      bottom: 11.h,
                      right: 0,
                      child: Stack(children: [
                        CustomImageView(
                            imagePath:
                                gameCardModel.badgeImagePath?.value ?? '',
                            height: 50.h,
                            width: 50.h),
                        Positioned(
                            bottom: 11.h,
                            right: 2.h,
                            child: Text(gameCardModel.badgeText?.value ?? '',
                                style: TextStyleHelper.instance.body12Inter)),
                      ])),
              ])),
          if (gameCardModel.title?.value.isNotEmpty ?? false)
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Text(gameCardModel.title?.value ?? '',
                    style: TextStyleHelper.instance.body13BoldNotoSans
                        .copyWith(shadows: [
                      Shadow(
                          color: appTheme.color3F0000,
                          offset: Offset(0, 1.h),
                          blurRadius: 2),
                    ]),
                    textAlign: TextAlign.center)),
        ]));
  }
}
