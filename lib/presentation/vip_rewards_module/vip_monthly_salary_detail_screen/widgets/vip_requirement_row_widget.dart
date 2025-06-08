import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vip_requirement_item_model.dart';

class VipRequirementRowWidget extends StatelessWidget {
  final VipRequirementItemModel vipRequirementItem;

  VipRequirementRowWidget({
    Key? key,
    required this.vipRequirementItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      color: _getRowBackgroundColor(),
      child: Row(
        children: [
          Container(
            width: 60.h,
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: vipRequirementItem.vipIcon?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  vipRequirementItem.vipLevel?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          Container(
            width: 66.h,
            alignment: Alignment.center,
            child: Text(
              vipRequirementItem.depositAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 65.h,
            alignment: Alignment.center,
            child: Text(
              vipRequirementItem.betAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 66.h,
            alignment: Alignment.center,
            child: Text(
              vipRequirementItem.upgradeBonus?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 66.h,
            alignment: Alignment.center,
            child: Text(
              vipRequirementItem.weeklyCashback?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }

  Color _getRowBackgroundColor() {
    int index = vipRequirementItem.vipLevel?.value.contains('1') == true
        ? 0
        : vipRequirementItem.vipLevel?.value.contains('2') == true
            ? 1
            : vipRequirementItem.vipLevel?.value.contains('3') == true
                ? 2
                : vipRequirementItem.vipLevel?.value.contains('4') == true
                    ? 3
                    : vipRequirementItem.vipLevel?.value.contains('5') == true
                        ? 4
                        : vipRequirementItem.vipLevel?.value.contains('6') ==
                                true
                            ? 5
                            : vipRequirementItem.vipLevel?.value
                                        .contains('7') ==
                                    true
                                ? 6
                                : vipRequirementItem.vipLevel?.value
                                            .contains('8') ==
                                        true
                                    ? 7
                                    : vipRequirementItem.vipLevel?.value
                                                .contains('9') ==
                                            true
                                        ? 8
                                        : 9;

    return index % 2 == 0 ? Color(0xFF25272B) : Color(0xFF1E2024);
  }
}
