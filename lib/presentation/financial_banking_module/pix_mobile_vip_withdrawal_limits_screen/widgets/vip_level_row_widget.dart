import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vip_level_model.dart';

class VipLevelRowWidget extends StatelessWidget {
  final VipLevelModel vipLevel;

  const VipLevelRowWidget({
    Key? key,
    required this.vipLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
      ),
      child: Row(
        children: [
          Container(
            width: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: vipLevel.iconPath?.value ?? '',
                  width: 16.h,
                  height: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  vipLevel.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Container(
            width: 72.h,
            alignment: Alignment.center,
            child: Text(
              vipLevel.withdrawalFee?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 81.h,
            alignment: Alignment.center,
            child: Text(
              vipLevel.numberOfWithdrawals?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                vipLevel.withdrawalLimit?.value ?? '',
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
