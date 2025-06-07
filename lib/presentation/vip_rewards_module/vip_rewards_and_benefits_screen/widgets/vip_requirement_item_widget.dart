import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_item_model.dart';

class VipRequirementItemWidget extends StatelessWidget {
  final VipRequirementItemModel requirement;

  const VipRequirementItemWidget({
    Key? key,
    required this.requirement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
      ),
      padding: EdgeInsets.all(8.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomImageView(
                  imagePath: requirement.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  requirement.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              requirement.depositAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              requirement.betAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              requirement.upgradeBonus?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              requirement.weeklyCashback?.value ?? '',
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
