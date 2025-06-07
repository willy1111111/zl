import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_row_model.dart';

class VipRequirementRowWidget extends StatelessWidget {
  final VipRequirementRowModel vipRequirementRow;

  VipRequirementRowWidget({
    Key? key,
    required this.vipRequirementRow,
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: vipRequirementRow.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipRequirementRow.vipLevel?.value ?? '',
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
