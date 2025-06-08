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
                if (gameItem.isSpecialBackground?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.overlayImage?.value ?? '',
                        width: 56.h,
                        height: 20.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.backgroundImage?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameItem.overlayImage?.value != null &&
                    !(gameItem.isSpecialBackground?.value ?? false))
                  CustomImageView(
                    imagePath: gameItem.overlayImage?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameItem.playIcon?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.playIcon?.value ?? '',
                      width: 34.h,
                      height: 18.h,
                    ),
                  ),
                if (gameItem.overlayImage?.value == null &&
                    gameItem.playIcon?.value == null &&
                    !(gameItem.isSpecialBackground?.value ?? false))
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
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom.withAlpha(128),
                            offset: Offset(0, 1.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                if (gameItem.isSpecialBackground?.value ?? false)
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
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom.withAlpha(128),
                            offset: Offset(0, 2.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          gameItem.notificationCount?.value ?? '1',
                          style: TextStyleHelper.instance.body12Black
                              .copyWith(letterSpacing: 2.h),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: 88.h,
            child: Text(
              gameItem.title?.value ?? '',
              style: TextStyleHelper.instance.body13Bold.copyWith(
                  color: appTheme.blackCustom.withAlpha(128),
                  shadows: [
                    Shadow(
                      color: appTheme.blackCustom.withAlpha(128),
                      offset: Offset(0, 1.h),
                      blurRadius: 2.h,
                    ),
                  ]),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
