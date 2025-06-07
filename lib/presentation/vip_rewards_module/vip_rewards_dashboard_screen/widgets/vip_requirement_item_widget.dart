import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_model.dart';

class VipRequirementItemWidget extends StatelessWidget {
  final VipRequirementModel vipRequirement;
  final int index;

  const VipRequirementItemWidget({
    Key? key,
    required this.vipRequirement,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xFF25272B) : appTheme.transparentCustom,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 64.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipRequirement.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
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
              children: [
                Expanded(
                  child: Text(
                    vipRequirement.depositAmount?.value ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Expanded(
                  child: Text(
                    vipRequirement.betAmount?.value ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Expanded(
                  child: Text(
                    vipRequirement.upgradeBonus?.value ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Expanded(
                  child: Text(
                    vipRequirement.weeklyCashback?.value ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
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
