import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notification;
  final Function(bool) onSelectionChanged;

  const NotificationItemWidget({
    Key? key,
    required this.notification,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSelectionCircle(),
          SizedBox(width: 16.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.all(16.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildNotificationIcon(),
                  SizedBox(width: 16.h),
                  Expanded(
                    child: _buildNotificationContent(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
          margin: EdgeInsets.only(top: 16.h),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Color(0xFF85D420) : appTheme.colorFF8089,
              width: 2.h,
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: isSelected
              ? Center(
                  child: Container(
                    width: 10.h,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF85D4,
                      borderRadius: BorderRadius.circular(5.h),
                    ),
                  ),
                )
              : null,
        ),
      );
    });
  }

  Widget _buildNotificationIcon() {
    return Obx(() {
      bool hasBackground = notification.hasIconBackground?.value ?? false;
      bool hasRedDot = notification.hasRedDot?.value ?? false;

      return Stack(
        children: [
          if (hasBackground)
            Container(
              width: 40.h,
              height: 43.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(20.h),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: notification.iconPath?.value ?? '',
                  height: 18.h,
                  width: 18.h,
                ),
              ),
            )
          else
            CustomImageView(
              imagePath: notification.iconPath?.value ?? '',
              height: 40.h,
              width: 40.h,
            ),
          if (hasRedDot)
            Positioned(
              top: hasBackground ? 0 : 12.h,
              right: hasBackground ? 6.h : 0,
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
      );
    });
  }

  Widget _buildNotificationContent() {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    notification.title?.value ?? '',
                    style: TextStyleHelper.instance.title16BoldArial,
                  ),
                ),
                Text(
                  notification.categoryLabel?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFFC0C8),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    notification.subtitle?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 16.h),
                Text(
                  notification.date?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial,
                ),
              ],
            ),
          ],
        ));
  }
}
