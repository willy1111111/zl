import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_level_item_model.dart';

class VipLevelRowWidget extends StatelessWidget {
  final VipLevelItemModel vipLevel;

  const VipLevelRowWidget({
    Key? key,
    required this.vipLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      color: appTheme.colorFF2527,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipLevel.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  vipLevel.levelText?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevel.depositAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevel.betAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevel.upgradeBonus?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevel.weeklyCashback?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
