import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notificationItem;
  final VoidCallback? onTap;

  NotificationItemWidget({
    Key? key,
    required this.notificationItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 345.h,
        height: 70.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
        ),
        child: Stack(
          children: [
            // Icon Section
            Positioned(
              top: (notificationItem.hasCustomBackground?.value ?? false)
                  ? 12.h
                  : 15.h,
              left: 8.h,
              child: Container(
                width: 40.h,
                height: (notificationItem.hasCustomBackground?.value ?? false)
                    ? 43.h
                    : 40.h,
                decoration:
                    (notificationItem.hasCustomBackground?.value ?? false)
                        ? BoxDecoration(
                            color: appTheme.colorFF1E20,
                            borderRadius: BorderRadius.circular(20.h),
                          )
                        : null,
                child: Stack(
                  children: [
                    if (notificationItem.hasCustomBackground?.value ?? false)
                      Positioned(
                        top: 14.h,
                        left: 11.h,
                        child: CustomImageView(
                          imagePath: notificationItem.icon?.value ?? '',
                          width: 18.h,
                          height: 18.h,
                        ),
                      )
                    else
                      CustomImageView(
                        imagePath: notificationItem.icon?.value ?? '',
                        width: 40.h,
                        height: 40.h,
                      ),
                    if (notificationItem.hasRedDot?.value ?? false)
                      Positioned(
                        top: (notificationItem.hasCustomBackground?.value ??
                                false)
                            ? 0
                            : -3.h,
                        right: 6.h,
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
            ),
            // Content Section
            Positioned(
              top: (notificationItem.hasCustomBackground?.value ?? false)
                  ? 12.h
                  : 11.h,
              left: 54.h,
              right: 12.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        notificationItem.title?.value ?? '',
                        style: TextStyleHelper.instance.title16BoldArial,
                      ),
                      Text(
                        notificationItem.source?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.colorFFC0C8),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          (notificationItem.hasCustomBackground?.value ?? false)
                              ? 5.h
                              : 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          notificationItem.subtitle?.value ?? '',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.colorFF8089),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 12.h),
                      Text(
                        notificationItem.date?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.colorFF4B55),
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
