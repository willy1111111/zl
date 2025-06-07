import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_model.dart';

class VipRequirementRowWidget extends StatelessWidget {
  final VipRequirementModel vipRequirement;

  VipRequirementRowWidget({
    Key? key,
    required this.vipRequirement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          SizedBox(
            width: 48.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipRequirement.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipRequirement.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  vipRequirement.depositAmount?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  vipRequirement.betAmount?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  vipRequirement.upgradeBonus?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  vipRequirement.weeklyCashback?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  vipRequirement.dailySalary?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
