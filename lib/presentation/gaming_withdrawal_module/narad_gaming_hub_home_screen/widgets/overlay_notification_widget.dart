import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/overlay_notification_model.dart';

class OverlayNotificationWidget extends StatelessWidget {
  final OverlayNotificationModel notification;
  final VoidCallback? onTap;

  const OverlayNotificationWidget({
    Key? key,
    required this.notification,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: notification.positionTop?.value.toDouble() ?? 0,
      left: notification.positionLeft?.value.toDouble(),
      right: notification.positionRight?.value.toDouble(),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 120.h,
          width: 120.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: notification.backgroundImage?.value ?? '',
                height: 120.h,
                width: 120.h,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: CustomImageView(
                  imagePath: notification.overlayImage?.value ?? '',
                  height: 120.h,
                  width: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 3.h,
                left: 15.h,
                child: CustomImageView(
                  imagePath: notification.contentImage?.value ?? '',
                  height: 99.h,
                  width: 91.h,
                ),
              ),
              if (notification.showBadge?.value ?? false)
                Positioned(
                  top: 11.h,
                  right: 4.h,
                  child: Container(
                    height: 16.h,
                    width: 16.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFF335,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Center(
                      child: Text(
                        '${notification.badgeCount?.value ?? 0}',
                        style: TextStyleHelper.instance.body12Bold2
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              if (notification.showTimer?.value ?? false)
                Positioned(
                  top: 55.h,
                  left: 24.h,
                  child: Text(
                    notification.timerText?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold2
                        .copyWith(color: appTheme.colorFFFDFF),
                  ),
                ),
              Positioned(
                top: 72.h,
                left: 1.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img1moneyrain,
                  height: 22.h,
                  width: 118.h,
                ),
              ),
              Positioned(
                top: 90.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img16,
                  height: 30.h,
                  width: 96.h,
                ),
              ),
              Positioned(
                top: 88.h,
                left: 30.h,
                child: Text(
                  notification.buttonText?.value ?? '',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom, shadows: [
                    Shadow(
                      offset: Offset(0, 1),
                      blurRadius: 2,
                      color: appTheme.blackCustom,
                    ),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
