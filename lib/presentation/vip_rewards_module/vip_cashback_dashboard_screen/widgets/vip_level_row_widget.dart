import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_level_item_model.dart';

class VipLevelRowWidget extends StatelessWidget {
  final VipLevelItemModel vipLevelItem;
  final bool isEvenRow;

  VipLevelRowWidget({
    Key? key,
    required this.vipLevelItem,
    required this.isEvenRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isEvenRow ? Color(0xFF25272B) : appTheme.transparentCustom,
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          SizedBox(
            width: 48.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipLevelItem.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipLevelItem.levelText?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    vipLevelItem.depositAmount?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    vipLevelItem.betAmount?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    vipLevelItem.upgradeBonus?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    vipLevelItem.weeklyCashback?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
