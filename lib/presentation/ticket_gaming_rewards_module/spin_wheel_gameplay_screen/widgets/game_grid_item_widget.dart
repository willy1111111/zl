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
          Container(
            height: 88.h,
            width: 88.h,
            child: Stack(
              children: [
                // Main game image or placeholder
                Container(
                  height: 88.h,
                  width: 88.h,
                  decoration: BoxDecoration(
                    color: (gameItem.isPlaceholder?.value ?? false)
                        ? Color(0xFF30353A)
                        : appTheme.transparentCustom,
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: (gameItem.isPlaceholder?.value ?? false)
                      ? Center(
                          child: CustomImageView(
                            imagePath: gameItem.gameImagePath?.value ??
                                '', // Modified: Added .value to access Rx<String> content
                            height: 20.h,
                            width: 56.h,
                          ),
                        )
                      : CustomImageView(
                          imagePath: gameItem.gameImagePath?.value ??
                              '', // Modified: Added .value to access Rx<String> content
                          height: 88.h,
                          width: 88.h,
                          fit: BoxFit.cover,
                        ),
                ),

                // Baccarat overlay image if available
                if (gameItem.baccaratImagePath != null)
                  CustomImageView(
                    imagePath: gameItem.baccaratImagePath!
                        .value, // Modified: Added .value to access Rx<String> content
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Special effect image if available
                if (gameItem.specialEffectImagePath != null)
                  CustomImageView(
                    imagePath: gameItem.specialEffectImagePath!
                        .value, // Modified: Added .value to access Rx<String> content
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Overlay icon
                if (gameItem.overlayIconPath != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.overlayIconPath!
                          .value, // Modified: Added .value to access Rx<String> content
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),

                // Badge count if available
                if (gameItem.badgeCount?.value != null &&
                    (gameItem.badgeCount?.value ?? 0) > 0)
                  Positioned(
                    top: 64.h,
                    right: 7.h,
                    child: Container(
                      height: 14.h,
                      width: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(7.h),
                      ),
                      child: Center(
                        child: Text(
                          '${gameItem.badgeCount?.value ?? 0}',
                          style: TextStyleHelper.instance.body12Black,
                        ),
                      ),
                    ),
                  ),

                // Progress bar if available
                if (gameItem.hasProgressBar?.value ?? false)
                  Positioned(
                    top: 55.h,
                    right: 0,
                    child: Container(
                      height: 1.h,
                      width: 50.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2548,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            offset: Offset(0, 4.h),
                          ),
                        ],
                      ),
                    ),
                  ),

                // Red dot if available
                if (gameItem.hasRedDot?.value ?? false)
                  Positioned(
                    top: 90.h,
                    right: 27.h,
                    child: Container(
                      height: 14.h,
                      width: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(7.h),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Title
          if ((gameItem.title?.value ?? '')
              .isNotEmpty) // Modified: Added .value to access Rx<String> content and fixed isNotEmpty check
            Container(
              width: 88.h,
              margin: EdgeInsets.only(top: 6.h),
              child: Text(
                gameItem.title?.value ??
                    '', // Modified: Added .value to access Rx<String> content
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body13Bold.copyWith(
                  color: appTheme.colorFF8089,
                  shadows: (gameItem.showTextShadow?.value ?? true)
                      ? // Modified: Fixed syntax by adding condition check
                      [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1.h),
                            blurRadius: 2.h,
                          ),
                        ]
                      : null, // Modified: Added null for else case
                ),
              ),
            ),
        ],
      ),
    );
  }
}
