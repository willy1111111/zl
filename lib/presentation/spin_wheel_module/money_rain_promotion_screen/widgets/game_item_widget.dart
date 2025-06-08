import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  const GameItemWidget({
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
            width: 88.h,
            height: 88.h,
            child: Stack(
              children: [
                // Main Game Image or Custom Background
                if (gameItem.isCustom?.value == true)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color:
                          gameItem.backgroundColor?.value ?? Color(0xFF30353A),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.imagePath?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.imagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Overlay Image (if exists)
                if (gameItem.hasOverlay?.value == true &&
                    gameItem.overlayImagePath?.value != null)
                  CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Badge Image (top-left)
                if (gameItem.badgeImagePath?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.badgeImagePath?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  )
                else if (gameItem.hasOverlay?.value == false &&
                    gameItem.isCustom?.value != true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 18.h,
                      width: 34.h,
                      decoration: BoxDecoration(
                        color: gameItem.backgroundColor?.value ??
                            Color(0xFF41474D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),

                // Custom badge for special items
                if (gameItem.isCustom?.value == true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 18.h,
                      width: 34.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),

                // Notification Badge (if exists)
                if (gameItem.hasNotificationBadge?.value == true)
                  Positioned(
                    top: 47.h,
                    right: 14.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(7.h),
                      ),
                      child: Center(
                        child: Text(
                          gameItem.notificationCount?.value ?? '1',
                          style: TextStyleHelper.instance.body12BlackArial
                              .copyWith(letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            gameItem.title?.value ?? '',
            style:
                TextStyleHelper.instance.body13BoldNotoSans.copyWith(shadows: [
              Shadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
