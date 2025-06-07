import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_item_model.dart';

class VipRequirementItemWidget extends StatelessWidget {
  final VipRequirementItemModel requirement;

  VipRequirementItemWidget({
    Key? key,
    required this.requirement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: appTheme.colorFF282F)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: requirement.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  requirement.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              requirement.depositAmount?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              requirement.betAmount?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              requirement.upgradeBonus?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              requirement.weeklySalary?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: (requirement.isWeeklySalaryHighlighted?.value ?? false)
                      ? appTheme.whiteCustom
                      : appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              requirement.monthlySalary?.value ?? '',
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
