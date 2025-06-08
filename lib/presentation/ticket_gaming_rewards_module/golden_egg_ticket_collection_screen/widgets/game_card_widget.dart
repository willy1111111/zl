import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/golden_egg_ticket_collection_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameItemModel gameItem;
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
      child: Container(
        width: 88.h,
        child: Column(
          children: [
            Container(
              width: 88.h,
              height: 88.h,
              child: Stack(
                children: [
                  if (gameItem.isPlaceholder?.value ?? false)
                    Container(
                      width: 88.h,
                      height: 88.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF3035,
                        borderRadius: BorderRadius.circular(4.h),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: gameItem.gameImage?.value ?? '',
                          height: 20.h,
                          width: 56.h,
                        ),
                      ),
                    )
                  else
                    CustomImageView(
                      imagePath: gameItem.gameImage?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    ),
                  if (gameItem.overlayImage?.value.isNotEmpty ?? false)
                    CustomImageView(
                      imagePath: gameItem.overlayImage?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    ),
                  if (gameItem.overlayIcon?.value.isNotEmpty ?? false)
                    Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                        imagePath: gameItem.overlayIcon?.value ?? '',
                        height: 34.h,
                        width: 18.h,
                      ),
                    ),
                  if (gameItem.hasSpecialEffect?.value ?? false)
                    CustomImageView(
                      imagePath: gameItem.specialEffectImage?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                    ),
                  if (gameItem.hasBadge?.value ?? false)
                    Positioned(
                      top: 64.h,
                      right: 13.h,
                      child: Container(
                        width: 14.h,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFFF335,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '${gameItem.badgeCount?.value ?? 1}',
                            style: TextStyleHelper.instance.body12BlackArial,
                          ),
                        ),
                      ),
                    ),
                  if (gameItem.hasProgressBar?.value ?? false)
                    Positioned(
                      top: -1.h,
                      right: 32.h,
                      child: Container(
                        width: 1.h,
                        height: 50.h,
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
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 88.h,
              child: Text(
                gameItem.title?.value ?? '',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body13BoldNotoSans
                    .copyWith(shadows: [
                  Shadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 1.h),
                    blurRadius: 2.h,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
