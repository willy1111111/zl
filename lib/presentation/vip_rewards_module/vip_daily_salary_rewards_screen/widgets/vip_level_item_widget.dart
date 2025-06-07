import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/vip_level_item_model.dart';

class VipLevelItemWidget extends StatelessWidget {
  final VipLevelItemModel vipLevelItemModel;
  final bool isEvenRow;

  VipLevelItemWidget({
    Key? key,
    required this.vipLevelItemModel,
    this.isEvenRow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      decoration: BoxDecoration(
        color: isEvenRow ? Color(0xFF25272B) : appTheme.colorFF1E20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: vipLevelItemModel.vipIconPath?.value ?? '',
                    width: 72.h,
                    height: 72.h,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    vipLevelItemModel.levelText?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFE1E1),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: vipLevelItemModel.rangeIconPath?.value ?? '',
                    width: 91.h,
                    height: 33.h,
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: vipLevelItemModel.betRanges?.value
                              .map((range) => Container(
                                    margin: EdgeInsets.only(bottom: 4.h),
                                    child: Text(
                                      range.value ?? '',
                                      style: TextStyleHelper.instance.body12Bold
                                          .copyWith(
                                              color: appTheme.colorFF8089),
                                    ),
                                  ))
                              .toList() ??
                          [],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: vipLevelItemModel.rewards?.value
                        .map((reward) => Container(
                              margin: EdgeInsets.only(bottom: 4.h),
                              child: Text(
                                reward.value ?? '',
                                style: TextStyleHelper.instance.body12Bold
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                            ))
                        .toList() ??
                    [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
