import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_grid_item_model.dart';

class GameGridItemWidget extends StatelessWidget {
  final GameGridItemModel gameItem;
  final VoidCallback? onTap;

  GameGridItemWidget({
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
          Stack(
            children: [
              Container(
                width: 88.h,
                height: 88.h,
                decoration: BoxDecoration(
                  color: gameItem.isLogoCard?.value ?? false
                      ? Color(0xFF30353A)
                      : appTheme.transparentCustom,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: gameItem.isLogoCard?.value ?? false
                    ? Center(
                        child: CustomImageView(
                          imagePath: gameItem.gameImagePath?.value ?? '',
                          width: 56.h,
                          height: 20.h,
                        ),
                      )
                    : CustomImageView(
                        imagePath: gameItem.gameImagePath?.value ?? '',
                        width: 88.h,
                        height: 88.h,
                        fit: BoxFit.cover,
                        radius: BorderRadius.circular(4.h),
                      ),
              ),
              if (gameItem.baccaratImagePath?.value.isNotEmpty ?? false)
                CustomImageView(
                  imagePath: gameItem.baccaratImagePath?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(4.h),
                ),
              if (gameItem.specialOverlayPath?.value.isNotEmpty ?? false)
                CustomImageView(
                  imagePath: gameItem.specialOverlayPath?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  fit: BoxFit.cover,
                ),
              if (gameItem.overlayImagePath?.value.isNotEmpty ?? false)
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    width: gameItem.overlayWidth?.value.toDouble() ?? 18.h,
                    height: gameItem.overlayHeight?.value.toDouble() ?? 34.h,
                  ),
                ),
              if (gameItem.hasNotificationDot?.value ?? false)
                Positioned(
                  top: gameItem.gameImagePath?.value == ImageConstant.img461000
                      ? -34.h
                      : 64.h,
                  right:
                      gameItem.gameImagePath?.value == ImageConstant.img461000
                          ? 61.h
                          : 37.h,
                  child: Container(
                    width: 14.h,
                    height: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFF335,
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                    child: gameItem.gameImagePath?.value ==
                            ImageConstant.img911000
                        ? Center(
                            child: Text(
                              '1',
                              style: TextStyleHelper.instance.body12BlackArial
                                  .copyWith(letterSpacing: 2),
                            ),
                          )
                        : null,
                  ),
                ),
              if (gameItem.badgeImagePath?.value.isNotEmpty ?? false)
                Positioned(
                  top: 65.h,
                  right: 36.h,
                  child: CustomImageView(
                    imagePath: gameItem.badgeImagePath?.value ?? '',
                    width: 50.h,
                    height: 50.h,
                  ),
                ),
              if (gameItem.hasBadge?.value ?? false)
                Positioned(
                  top: 127.h,
                  right: 37.h,
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup827,
                        width: 50.h,
                        height: 50.h,
                      ),
                      Positioned(
                        top: 2.h,
                        left: 2.h,
                        child: Text(
                          gameItem.badgeNumber?.value ?? '',
                          style: TextStyleHelper.instance.body12Inter,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            width: 88.h,
            child: Text(
              gameItem.title?.value ?? '',
              style: TextStyleHelper.instance.body13BoldNotoSans.copyWith(
                  color: appTheme.blackCustom.withAlpha(64),
                  shadows: [
                    Shadow(
                      color: appTheme.blackCustom.withAlpha(64),
                      offset: Offset(0, 1),
                      blurRadius: 2,
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
