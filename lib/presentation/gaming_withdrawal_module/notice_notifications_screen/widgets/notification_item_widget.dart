import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notice_notifications_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NoticeNotificationsModel notification;
  final VoidCallback? onDetailsTap;

  const NotificationItemWidget({
    Key? key,
    required this.notification,
    this.onDetailsTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          width: 1.h,
          color: appTheme.colorFF3535,
        ),
      ),
      padding: EdgeInsets.all(8.h),
      child: Stack(
        children: [
          _buildNotificationIcon(),
          _buildNotificationTitle(),
          _buildDetailsButton(),
          _buildNotificationBadges(),
        ],
      ),
    );
  }

  Widget _buildNotificationIcon() {
    return Positioned(
      left: 0,
      top: 3.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: notification.icon?.value ?? '',
            height: 48.h,
            width: 48.h,
            radius: BorderRadius.circular(24.h),
          ),
          if (notification.overlayIcon?.value != null)
            CustomImageView(
              imagePath: notification.overlayIcon?.value ?? '',
              height: 48.h,
              width: 48.h,
            ),
        ],
      ),
    );
  }

  Widget _buildNotificationTitle() {
    return Positioned(
      left: 56.h,
      top: 16.h,
      child: Text(
        notification.title?.value ?? '',
        style: TextStyleHelper.instance.title16Bold
            .copyWith(color: appTheme.whiteCustom, height: 1.19),
      ),
    );
  }

  Widget _buildDetailsButton() {
    return Positioned(
      left: 231.h,
      top: 13.h,
      child: GestureDetector(
        onTap: onDetailsTap,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1632x95,
              height: 32.h,
              width: 95.h,
            ),
            Positioned(
              left: 21.h,
              top: 5.h,
              child: Text(
                'Details',
                style: TextStyleHelper.instance.title16Bold.copyWith(
                    color: appTheme.whiteCustom,
                    height: 1.75,
                    shadows: [
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

  Widget _buildNotificationBadges() {
    return Stack(
      children: [
        if (notification.hasMultipleBadges?.value ?? false) ...[
          Positioned(
            left: 310.h,
            top: 5.h,
            child: Container(
              width: 16.h,
              height: 16.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFF335,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Center(
                child: Text(
                  '${notification.badgeCount?.value ?? 0}',
                  style: TextStyleHelper.instance.body12Bold2
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            ),
          ),
          Positioned(
            left: 294.h,
            top: 4.h,
            child: Container(
              width: 32.h,
              height: 16.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFF335,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Center(
                child: Text(
                  '${notification.multipleBadgeCount?.value ?? 0}+',
                  style: TextStyleHelper.instance.body12Bold2
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            ),
          ),
        ] else ...[
          if ((notification.badgeCount?.value ?? 0) <= 9)
            Positioned(
              left: 310.h,
              top: 5.h,
              child: Container(
                width: 16.h,
                height: 16.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFF335,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Center(
                  child: Text(
                    '${notification.badgeCount?.value ?? 0}',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                  ),
                ),
              ),
            )
          else
            Positioned(
              left: 294.h,
              top: 4.h,
              child: Container(
                width: 32.h,
                height: 16.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFF335,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Center(
                  child: Text(
                    '${notification.badgeCount?.value ?? 0}+',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                  ),
                ),
              ),
            ),
        ],
      ],
    );
  }
}
