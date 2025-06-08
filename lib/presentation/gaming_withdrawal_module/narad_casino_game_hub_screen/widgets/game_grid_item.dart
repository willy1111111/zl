import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameGridItem extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  GameGridItem({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Stack(
                children: [
                  // Game Image Container
                  Container(
                    height: 88.h,
                    width: 88.h,
                    decoration: BoxDecoration(
                      color: (gameItem.hasSpecialBackground?.value ?? false)
                          ? Color(0xFF30353A)
                          : appTheme.transparentCustom,
                      borderRadius: (gameItem.isRounded?.value ?? false)
                          ? BorderRadius.circular(8.h)
                          : null,
                    ),
                    child: ClipRRect(
                      borderRadius: (gameItem.isRounded?.value ?? false)
                          ? BorderRadius.circular(8.h)
                          : BorderRadius.zero,
                      child: Stack(
                        children: [
                          // Main game image
                          CustomImageView(
                            imagePath: gameItem.gameImage?.value ?? '',
                            height: 88.h,
                            width: 88.h,
                            fit: BoxFit.cover,
                          ),

                          // Overlay image if exists
                          if (gameItem.overlayImage?.value.isNotEmpty ?? false)
                            CustomImageView(
                              imagePath: gameItem.overlayImage?.value ?? '',
                              height: 88.h,
                              width: 88.h,
                              fit: BoxFit.cover,
                            ),
                        ],
                      ),
                    ),
                  ),

                  // Badge if exists
                  if (gameItem.hasBadge?.value ?? false)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: CustomImageView(
                        imagePath: gameItem.badgeImage?.value ?? '',
                        height: 18.h,
                        width: 34.h,
                        fit: BoxFit.cover,
                      ),
                    ),

                  // Special badge background for games without badge image
                  if (!(gameItem.hasBadge?.value ?? false) &&
                      (gameItem.badgeImage?.value.isEmpty ?? true))
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 18.h,
                        width: 34.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF4147,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.h),
                            bottomLeft: Radius.circular(8.h),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.blackCustom,
                              offset: Offset(0, 1.h),
                              blurRadius: 2.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),

              SizedBox(height: 4.h),

              // Game name
              Text(
                gameItem.gameName?.value ?? '',
                style: TextStyleHelper.instance.body12Bold2
                    .copyWith(color: appTheme.colorFF8089),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ));
  }
}
