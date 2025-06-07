import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_row_model.dart';

class VipRequirementRowWidget extends StatelessWidget {
  final VipRequirementRowModel vipRequirementRow;
  final bool isLastItem;

  VipRequirementRowWidget({
    Key? key,
    required this.vipRequirementRow,
    this.isLastItem = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(bottom: BorderSide(color: appTheme.colorFF1516)),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Container(
            width: 48.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipRequirementRow.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipRequirementRow.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              vipRequirementRow.depositAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              vipRequirementRow.betAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              vipRequirementRow.upgradeBonus?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              vipRequirementRow.weeklyCashback?.value ?? '',
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
