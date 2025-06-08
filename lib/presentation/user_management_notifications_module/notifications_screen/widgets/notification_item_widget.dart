import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/notifications_controller.dart';
import '../models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notificationModel;

  NotificationItemWidget({
    Key? key,
    required this.notificationModel,
  }) : super(key: key);

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onNotificationTap(notificationModel),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.h,
              height: 40.h,
              child: Stack(
                children: [
                  if (notificationModel.hasCustomBackground?.value ?? false)
                    Container(
                      width: 40.h,
                      height: 43.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF1E20,
                        borderRadius: BorderRadius.circular(20.h),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: notificationModel.iconPath?.value ?? '',
                          height: 18.h,
                          width: 18.h,
                        ),
                      ),
                    )
                  else
                    CustomImageView(
                      imagePath: notificationModel.iconPath?.value ?? '',
                      height: 40.h,
                      width: 40.h,
                      fit: BoxFit.cover,
                    ),
                  if (notificationModel.overlayIconPath?.value.isNotEmpty ??
                      false)
                    Positioned(
                      top: 13.h,
                      left: 9.h,
                      child: CustomImageView(
                        imagePath:
                            notificationModel.overlayIconPath?.value ?? '',
                        height: 20.h,
                        width: 22.h,
                      ),
                    ),
                  if (notificationModel.hasNotificationDot?.value ?? false)
                    Positioned(
                      top: 0,
                      right:
                          notificationModel.hasCustomBackground?.value ?? false
                              ? 6.h
                              : 0,
                      child: Container(
                        width: 8.h,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFFF652,
                          borderRadius: BorderRadius.circular(4.h),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          notificationModel.title?.value ?? '',
                          style: TextStyleHelper.instance.title16BoldArial,
                        ),
                      ),
                      Text(
                        notificationModel.type?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.colorFFC0C8),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          notificationModel.message?.value ?? '',
                          style: TextStyleHelper.instance.body14BoldArial,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        notificationModel.date?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
