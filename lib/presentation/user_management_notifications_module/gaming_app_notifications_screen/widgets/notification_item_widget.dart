import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notificationItem;
  final VoidCallback? onTap;

  const NotificationItemWidget({
    Key? key,
    required this.notificationItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: Border.all(color: appTheme.colorFF3437),
          borderRadius: BorderRadius.circular(8.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF0000,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        notificationItem.timestamp?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFF4B55),
                      ),
                      CustomImageView(
                        imagePath: notificationItem.expandIcon?.value ?? '',
                        height: 20.h,
                        width: 20.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    notificationItem.autoDeleteText?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF4B55),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    notificationItem.title?.value ?? '',
                    style: TextStyleHelper.instance.title16,
                  ),
                  if (notificationItem.hasNewReply?.value ?? false) ...[
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: notificationItem.replyIcon?.value ?? '',
                          height: 18.h,
                          width: 18.h,
                        ),
                        SizedBox(width: 8.h),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFC600), Color(0xFFFFB800)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(4.h),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 4.h),
                          child: Text(
                            'NEW REPLY',
                            style: TextStyleHelper.instance.body14
                                .copyWith(color: appTheme.colorFF1E20),
                          ),
                        ),
                        SizedBox(width: 16.h),
                        Text(
                          notificationItem.newReplyTimestamp?.value ?? '',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFF4B55),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            if (notificationItem.isExpanded?.value ?? false)
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.h),
                    bottomRight: Radius.circular(10.h),
                  ),
                ),
                child: Text(
                  notificationItem.content?.value ?? '',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
