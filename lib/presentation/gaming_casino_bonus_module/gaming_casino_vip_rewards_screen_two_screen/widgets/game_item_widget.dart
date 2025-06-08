import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/gaming_casino_vip_rewards_screen_two_model.dart';

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
          Stack(
            children: [
              Container(
                width: 88.h,
                height: 88.h,
                decoration: BoxDecoration(
                  color: (gameItem.isCustomBackground?.value ?? false)
                      ? Color(0xFF30353A)
                      : appTheme.transparentCustom,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: (gameItem.isCustomBackground?.value ?? false)
                    ? Center(
                        child: CustomImageView(
                          imagePath: gameItem.imagePath?.value ?? '',
                          width: 56.h,
                          height: 20.h,
                          radius: BorderRadius.circular(4.h),
                        ),
                      )
                    : CustomImageView(
                        imagePath: gameItem.imagePath?.value ?? '',
                        width: 88.h,
                        height: 88.h,
                        radius: BorderRadius.circular(4.h),
                        fit: BoxFit.cover,
                      ),
              ),
              if (gameItem.overlayImagePath?.value.isNotEmpty == true)
                Positioned.fill(
                  child: CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),
                ),
              if (gameItem.playIconPath?.value.isNotEmpty == true ||
                  gameItem.overlayImagePath?.value.isNotEmpty == true)
                Positioned(
                  top: 27.h,
                  left: (gameItem.isCustomBackground?.value ?? false)
                      ? 0.h
                      : 35.h,
                  child: gameItem.playIconPath?.value.isNotEmpty == true
                      ? CustomImageView(
                          imagePath: gameItem.playIconPath?.value ?? '',
                          width: 34.h,
                          height: 18.h,
                        )
                      : (gameItem.isCustomBackground?.value ?? false)
                          ? Container(
                              width: 34.h,
                              height: 18.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF4147,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4.h),
                                  bottomLeft: Radius.circular(6.h),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blackCustom,
                                    offset: Offset(0, 1.h),
                                    blurRadius: 2.h,
                                  ),
                                ],
                              ),
                            )
                          : Container(
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
                                    color: appTheme.blackCustom,
                                    offset: Offset(0, 1.h),
                                    blurRadius: 2.h,
                                  ),
                                ],
                              ),
                            ),
                ),
              if (gameItem.hasNotification?.value ?? false)
                Positioned(
                  top: 47.h,
                  right: 0.h,
                  child: Container(
                    width: 14.h,
                    height: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFF335,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${gameItem.notificationCount?.value ?? 1}',
                        style: TextStyleHelper.instance.body12Black
                            .copyWith(letterSpacing: 2.h, height: 1.42),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            gameItem.title?.value ?? '',
            style: TextStyleHelper.instance.body13Bold.copyWith(height: 1.23),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
