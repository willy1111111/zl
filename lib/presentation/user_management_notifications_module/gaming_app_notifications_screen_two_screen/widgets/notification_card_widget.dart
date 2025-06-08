import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationItemModel notification;
  final VoidCallback? onExpandPressed;

  NotificationCardWidget({
    Key? key,
    required this.notification,
    this.onExpandPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF3437),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF0000,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timestamp and Delete Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.timestamp?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF4B55),
                    ),
                    Expanded(
                      child: Text(
                        notification.deleteInfo?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFF4B55),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.h),

                // Title and Expand Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      notification.title?.value ?? '',
                      style: TextStyleHelper.instance.title16,
                    ),
                    GestureDetector(
                      onTap: onExpandPressed,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgComponent7BlueGray400,
                        height: 20.h,
                        width: 20.h,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // User Message
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.all(16.h),
                  child: Text(
                    notification.userMessage?.value ?? '',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089, height: 1.14),
                  ),
                ),

                SizedBox(height: 16.h),

                // Reply Section
                Row(
                  children: [
                    CustomImageView(
                      imagePath: (notification.supportIconVariant?.value ==
                              'blue_gray')
                          ? ImageConstant.imgGroup12780BlueGray400
                          : ImageConstant.imgGroup12780,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 8.h),
                    if (notification.hasReplyBadge?.value ?? false) ...[
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 4.h),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF1E40AF), Color(0xFF3B82F6)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20.h),
                        ),
                        child: Text(
                          'NEW REPLY',
                          style: TextStyleHelper.instance.body14
                              .copyWith(color: appTheme.colorFF1E20),
                        ),
                      ),
                      SizedBox(width: 8.h),
                    ],
                    Text(
                      notification.replyTimestamp?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF4B55),
                    ),
                  ],
                ),

                if (notification.hasScrollIndicator?.value ?? false)
                  Positioned(
                    bottom: 16.h,
                    right: 16.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup911,
                      height: 40.h,
                      width: 40.h,
                    ),
                  ),
              ],
            ),
          ),

          // Support Reply Section
          if (notification.hasReplyBadge?.value ?? false)
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: 16.h).copyWith(bottom: 16.h),
              padding: EdgeInsets.all(16.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF0000,
                    blurRadius: 4.h,
                    offset: Offset(0, 2.h),
                  ),
                ],
              ),
              child: Text(
                notification.supportReply?.value ?? '',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF51A0, height: 1.29),
              ),
            )
          else
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.h).copyWith(bottom: 16.h),
              child: Text(
                notification.supportReply?.value ?? '',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF51A0, height: 1.29),
              ),
            ),
        ],
      ),
    );
  }
}
