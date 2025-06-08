import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  GameItemWidget({
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
                // Main game image
                if (gameItem.isSpecial?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.gameImagePath?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.gameImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Overlay image if present
                if (gameItem.overlayImagePath?.value.isNotEmpty ?? false)
                  CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Badge image
                if (gameItem.badgeImagePath?.value.isNotEmpty ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.badgeImagePath?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),

                // Overlay badge for special items
                if (gameItem.hasOverlayBadge?.value ?? false)
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
                          bottomLeft: Radius.circular(4.h),
                        ),
                      ),
                    ),
                  ),

                // Special overlay badge for placeholder
                if (gameItem.isSpecial?.value ?? false)
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
                          bottomLeft: Radius.circular(4.h),
                        ),
                      ),
                    ),
                  ),

                // Notification badge
                if (gameItem.hasNotificationBadge?.value ?? false)
                  Positioned(
                    top: 47.h,
                    right: 7.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          gameItem.notificationCount?.value ?? '',
                          style: TextStyleHelper.instance.label10Black,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (gameItem.gameTitle?.value.isNotEmpty ?? false)
            Container(
              margin: EdgeInsets.only(top: 4.h),
              child: Text(
                gameItem.gameTitle?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
