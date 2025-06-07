import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_level_item_model.dart';

class VipLevelRowWidget extends StatelessWidget {
  final VipLevelItemModel vipLevelModel;
  final bool isAlternate;

  VipLevelRowWidget({
    Key? key,
    required this.vipLevelModel,
    this.isAlternate = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: isAlternate ? Color(0xFF25272b) : appTheme.transparentCustom,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: vipLevelModel.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipLevelModel.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              vipLevelModel.depositAmount?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              vipLevelModel.betAmount?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              vipLevelModel.upgradeBonus?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              vipLevelModel.weeklyCashback?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }
}
