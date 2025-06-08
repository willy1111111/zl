import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/winner_item_model.dart';

class WinnerItemWidget extends StatelessWidget {
  final WinnerItemModel winnerItem;

  WinnerItemWidget({
    Key? key,
    required this.winnerItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: winnerItem.avatarPath?.value ??
                '', // Modified: Added .value to access Rx<String> content
            height: 20.h,
            width: 20.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8.h),
          Text(
            winnerItem.username?.value ??
                '', // Modified: Added .value to access Rx<String> content
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(width: 8.h),
          Text(
            'received a bonus of',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Text(
              winnerItem.bonusAmount?.value ??
                  '', // Modified: Added .value to access Rx<String> content
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
        ],
      ),
    );
  }
}
