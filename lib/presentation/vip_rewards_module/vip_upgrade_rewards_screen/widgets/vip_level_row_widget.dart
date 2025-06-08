import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vip_level_row_model.dart';

class VipLevelRowWidget extends StatelessWidget {
  final VipLevelRowModel levelRow;

  const VipLevelRowWidget({
    Key? key,
    required this.levelRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                CustomImageView(
                  imagePath: levelRow.levelIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  levelRow.levelText?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              levelRow.depositAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              levelRow.betAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              levelRow.upgradeBonus?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              levelRow.weeklyCashback?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
