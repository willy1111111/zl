import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/notifications_screen_two_model.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationModel notification;
  final VoidCallback? onViewEventTap;

  NotificationCardWidget({
    Key? key,
    required this.notification,
    this.onViewEventTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 202.h,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimestampRow(),
          SizedBox(height: 8.h),
          _buildDivider(),
          SizedBox(height: 8.h),
          _buildTitle(),
          SizedBox(height: 11.h),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildTimestampRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notification.timestamp?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF4B55, height: 1.17),
        ),
        Text(
          notification.autoDeleteInfo?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF4B55, height: 1.17),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 315.h,
      height: 1.h,
      color: appTheme.colorFF282F,
    );
  }

  Widget _buildTitle() {
    return Text(
      notification.title?.value ?? '',
      style: TextStyleHelper.instance.title16Bold
          .copyWith(color: appTheme.colorFFFFFF, height: 1.19),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: notification.description?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.14),
            ),
            TextSpan(
              text: ' ${notification.bonusAmount?.value ?? ''}',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFFFC6, height: 1.14),
            ),
            TextSpan(
              text: notification.additionalText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.14),
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: onViewEventTap,
                child: Text(
                  notification.viewEventText?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold.copyWith(
                      color: appTheme.colorFF51A0,
                      height: 1.14,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
