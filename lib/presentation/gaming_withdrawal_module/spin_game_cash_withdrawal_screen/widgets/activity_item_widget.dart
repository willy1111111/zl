import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/activity_item_model.dart';

class ActivityItemWidget extends StatelessWidget {
  final ActivityItemModel activityItem;

  ActivityItemWidget({
    Key? key,
    required this.activityItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 32.h,
      margin: EdgeInsets.only(bottom: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.color80FFFF,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          Text(
            activityItem.username?.value ?? '',
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFFFFFF, height: 1.25),
          ),
          SizedBox(width: 44.h),
          Text(
            activityItem.status?.value ?? '',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.25),
          ),
          SizedBox(width: 35.h),
          Text(
            activityItem.amount?.value ?? '',
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFFFFD1, height: 1.25),
          ),
        ],
      ),
    );
  }
}
