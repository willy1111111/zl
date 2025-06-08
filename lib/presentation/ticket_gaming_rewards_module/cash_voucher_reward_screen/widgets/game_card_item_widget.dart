import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameCardItem;
  final VoidCallback? onTap;

  GameCardItemWidget({
    Key? key,
    required this.gameCardItem,
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
                // Background or Logo Card
                if (gameCardItem.isLogoCard?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameCardItem.logoImagePath?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameCardItem.gameImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(4.h),
                  ),

                // Overlay Image
                if (gameCardItem.hasOverlayImage?.value ?? false)
                  CustomImageView(
                    imagePath: gameCardItem.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(4.h),
                  ),

                // Overlay Icon
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomImageView(
                    imagePath: gameCardItem.overlayIconPath?.value ?? '',
                    height: 34.h,
                    width: 18.h,
                  ),
                ),

                // Special Effect
                if (gameCardItem.hasSpecialEffect?.value ?? false)
                  CustomImageView(
                    imagePath: gameCardItem.specialEffectImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                  ),

                // Badge
                if (gameCardItem.hasBadge?.value ?? false)
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
                          '${gameCardItem.badgeCount?.value ?? 1}',
                          style: TextStyleHelper.instance.body12Black,
                        ),
                      ),
                    ),
                  ),

                // Progress Bar
                if (gameCardItem.hasProgressBar?.value ?? false)
                  Positioned(
                    top: 127.h,
                    right: 40.h,
                    child: Container(
                      width: 1.h,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2548,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            offset: Offset(0, 4),
                            blurRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Title
          if ((gameCardItem.title?.value ?? '').isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                gameCardItem.title?.value ?? '',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
        ],
      ),
    );
  }
}
