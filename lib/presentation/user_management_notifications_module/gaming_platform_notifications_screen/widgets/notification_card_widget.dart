import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/gaming_platform_notifications_controller.dart';
import '../models/gaming_platform_notifications_model.dart';

class NotificationCardWidget extends StatelessWidget {
  final GamingPlatformNotificationsModel notificationModel;

  NotificationCardWidget({
    Key? key,
    required this.notificationModel,
  }) : super(key: key);

  var controller = Get.find<GamingPlatformNotificationsController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onNotificationTap(notificationModel),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(
            color: appTheme.colorFF3437,
            width: 1.h,
          ),
        ),
        child: Column(
          children: [
            _buildNotificationHeader(),
            _buildReplySection(),
            _buildSupportResponse(),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationHeader() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
        border: Border.all(
          color: appTheme.colorFF3437,
          width: 1.h,
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationModel.date?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.colorFF4B55, height: 1.17),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    notificationModel.deleteInfo?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.colorFF4B55, height: 1.17),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => controller.onMoreOptionsTap(notificationModel),
                child: CustomImageView(
                  imagePath: ImageConstant.imgComponent7BlueGray400,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            notificationModel.title?.value ?? '',
            style:
                TextStyleHelper.instance.title16Regular.copyWith(height: 1.19),
          ),
          SizedBox(height: 16.h),
          Text(
            notificationModel.description?.value ?? '',
            style:
                TextStyleHelper.instance.body14Regular.copyWith(height: 1.14),
          ),
        ],
      ),
    );
  }

  Widget _buildReplySection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border(
          left: BorderSide(color: appTheme.colorFF3437, width: 1.h),
          right: BorderSide(color: appTheme.colorFF3437, width: 1.h),
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: (notificationModel.hasNewReply?.value ?? false)
          ? Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup12780,
                  height: 24.h,
                  width: 24.h,
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                  child: Text(
                    'NEW REPLY',
                    style: TextStyleHelper.instance.body14Regular
                        .copyWith(color: appTheme.colorFF1E20, height: 1.21),
                  ),
                ),
                SizedBox(width: 8.h),
                Text(
                  notificationModel.replyDate?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold2
                      .copyWith(color: appTheme.colorFF4B55, height: 1.17),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath:
                          (notificationModel.showStatusIcon?.value ?? false)
                              ? ImageConstant.imgGroup12780
                              : ImageConstant.imgGroup12780BlueGray400,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      notificationModel.replyDate?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold2.copyWith(
                          color: appTheme.colorFF4B55,
                          height:
                              (notificationModel.showStatusIcon?.value ?? false)
                                  ? 1.17
                                  : 1.0),
                    ),
                  ],
                ),
                if (notificationModel.showStatusIcon?.value ?? false)
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup911,
                    height: 40.h,
                    width: 40.h,
                  ),
              ],
            ),
    );
  }

  Widget _buildSupportResponse() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1E2024), Color(0xFF25282D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.h),
          bottomRight: Radius.circular(8.h),
        ),
        border: Border.all(
          color: appTheme.colorFF3437,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(64),
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Text(
        notificationModel.supportResponse?.value ?? '',
        style: TextStyleHelper.instance.body14Regular
            .copyWith(color: appTheme.colorFF51A0, height: 1.29),
      ),
    );
  }
}
