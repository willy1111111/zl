import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationItemModel notification;
  final Function(bool) onSelectionChanged;
  final VoidCallback onOptionsPressed;

  NotificationCardWidget({
    Key? key,
    required this.notification,
    required this.onSelectionChanged,
    required this.onOptionsPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSelectionCircle(),
        SizedBox(width: 16.h),
        Expanded(
          child: _buildNotificationCard(),
        ),
      ],
    );
  }

  Widget _buildSelectionCircle() {
    return Obx(() {
      bool isSelected = notification.isSelected?.value ?? false;
      return GestureDetector(
        onTap: () => onSelectionChanged(!isSelected),
        child: Container(
          width: 20.h,
          height: 20.h,
          margin: EdgeInsets.only(top: 33.h),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isSelected
                ? null
                : Border.all(
                    color: appTheme.colorFF8089,
                    width: 2.h,
                  ),
          ),
          child: isSelected
              ? CustomImageView(
                  imagePath: ImageConstant.imgGroup12776,
                  height: 20.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                )
              : null,
        ),
      );
    });
  }

  Widget _buildNotificationCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF3437),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(102),
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 8.h),
          _buildTitle(),
          SizedBox(height: 16.h),
          _buildDescription(),
          if (notification.hasReply?.value ?? false) ...[
            SizedBox(height: 16.h),
            _buildReplySection(),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notification.date?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF4B55),
        ),
        Expanded(
          child: Text(
            notification.deleteInfo?.value ?? '',
            textAlign: TextAlign.right,
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF4B55),
          ),
        ),
        SizedBox(width: 8.h),
        GestureDetector(
          onTap: onOptionsPressed,
          child: CustomImageView(
            imagePath: ImageConstant.imgComponent7BlueGray400,
            height: 20.h,
            width: 20.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      notification.title?.value ?? '',
      style: TextStyleHelper.instance.title16,
    );
  }

  Widget _buildDescription() {
    return Text(
      notification.description?.value ?? '',
      style: TextStyleHelper.instance.body14
          .copyWith(color: appTheme.colorFF8089, height: 1.2),
    );
  }

  Widget _buildReplySection() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup12780,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
        SizedBox(width: 8.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
          decoration: BoxDecoration(
            color: appTheme.colorFFFFC6,
            borderRadius: BorderRadius.circular(4.h),
          ),
          child: Text(
            'NEW REPLY',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFF1E20),
          ),
        ),
        SizedBox(width: 16.h),
        Text(
          notification.replyDate?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF4B55),
        ),
      ],
    );
  }
}
