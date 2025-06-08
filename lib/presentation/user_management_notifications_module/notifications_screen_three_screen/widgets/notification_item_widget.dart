import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notificationModel;
  final Function(bool)? onSelectionChanged;

  NotificationItemWidget({
    Key? key,
    required this.notificationModel,
    this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSelectionCircle(),
          SizedBox(width: 16.h),
          Expanded(
            child: _buildNotificationCard(),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectionCircle() {
    return Obx(() => GestureDetector(
          onTap: () {
            bool newValue = !(notificationModel.isSelected?.value ?? false);
            notificationModel.isSelected?.value = newValue;
            onSelectionChanged?.call(newValue);
          },
          child: Container(
            width: 20.h,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: (notificationModel.isSelected?.value ?? false)
                  ? null
                  : Border.all(
                      color: appTheme.colorFF8089,
                      width: 2.h,
                    ),
            ),
            child: (notificationModel.isSelected?.value ?? false)
                ? CustomImageView(
                    imagePath: ImageConstant.imgGroup12776,
                    height: 20.h,
                    width: 20.h,
                  )
                : null,
          ),
        ));
  }

  Widget _buildNotificationCard() {
    return Container(
      height: 70.h,
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          _buildIconSection(),
          SizedBox(width: 6.h),
          Expanded(
            child: _buildContentSection(),
          ),
          _buildTimestampSection(),
        ],
      ),
    );
  }

  Widget _buildIconSection() {
    return Stack(
      children: [
        Container(
          width: 40.h,
          height: 40.h,
          decoration: (notificationModel.hasCustomBackground?.value ?? false)
              ? BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(20.h),
                )
              : null,
          child: CustomImageView(
            imagePath: notificationModel.iconPath?.value ?? '',
            height: 40.h,
            width: 40.h,
            fit: BoxFit.contain,
          ),
        ),
        if (notificationModel.hasRedBadge?.value ?? false)
          Positioned(
            top: (notificationModel.hasCustomBackground?.value ?? false)
                ? 0.h
                : 12.h,
            right: (notificationModel.hasCustomBackground?.value ?? false)
                ? 6.h
                : 0.h,
            child: Container(
              width: 8.h,
              height: 8.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFF652,
                shape: BoxShape.circle,
              ),
            ),
          ),
        if (notificationModel.overlayIconPath?.value.isNotEmpty ?? false)
          Positioned(
            top: 10.h,
            left: 9.h,
            child: CustomImageView(
              imagePath: notificationModel.overlayIconPath?.value ?? '',
              height: 20.h,
              width: 22.h,
            ),
          ),
      ],
    );
  }

  Widget _buildContentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          notificationModel.title?.value ?? '',
          style: TextStyleHelper.instance.title16BoldArial,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 6.h),
        Text(
          notificationModel.message?.value ?? '',
          style: TextStyleHelper.instance.body14BoldArial,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildTimestampSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notificationModel.category?.value ?? '',
          style: TextStyleHelper.instance.body12BoldArial
              .copyWith(color: appTheme.colorFFC0C8),
        ),
        Text(
          notificationModel.date?.value ?? '',
          style: TextStyleHelper.instance.body12BoldArial,
        ),
      ],
    );
  }
}
