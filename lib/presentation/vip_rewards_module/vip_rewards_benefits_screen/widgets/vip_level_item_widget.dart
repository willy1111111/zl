import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_level_item_model.dart';

class VipLevelItemWidget extends StatelessWidget {
  final VipLevelItemModel vipLevelItemModel;

  VipLevelItemWidget({
    Key? key,
    required this.vipLevelItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipLevelItemModel.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  vipLevelItemModel.levelText?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevelItemModel.depositAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevelItemModel.betAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevelItemModel.upgradeBonus?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                vipLevelItemModel.weeklyCashback?.value ?? '',
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
