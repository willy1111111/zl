import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/deposit_bonus_card_model.dart';

class DepositBonusCardWidget extends StatelessWidget {
  final DepositBonusCardModel? depositModel;

  DepositBonusCardWidget({
    Key? key,
    this.depositModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.h,
      height: 50.h,
      decoration: BoxDecoration(
        color: appTheme.colorFFFFCB,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          // Right section with background
          Positioned(
            left: 92.h,
            child: Container(
              width: 251.h,
              height: 50.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFF9DB,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.h),
                  bottomRight: Radius.circular(8.h),
                ),
              ),
            ),
          ),

          // Polygon decorations
          Positioned(
            left: 276.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgPolygon146x54,
              height: 46.h,
              width: 54.h,
            ),
          ),
          Positioned(
            left: 278.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgPolygon244x51,
              height: 44.h,
              width: 51.h,
            ),
          ),

          // Deposit order and label
          Positioned(
            left: 25.h,
            top: 8.h,
            child: Column(
              children: [
                Text(
                  depositModel?.depositOrder?.value ?? '1st',
                  style: TextStyleHelper.instance.title17Bold,
                ),
                Text(
                  depositModel?.depositLabel?.value ?? 'Deposit',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF6C0A),
                ),
              ],
            ),
          ),

          // Extra label
          Positioned(
            left: 106.h,
            top: 16.h,
            child: Text(
              'Extra',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF9134),
            ),
          ),

          // Main percentage
          Positioned(
            left: 137.h,
            top: 12.h,
            child: Row(
              children: [
                Text(
                  depositModel?.mainPercentage?.value ?? '30',
                  style: TextStyleHelper.instance.headline24Bold,
                ),
                Text(
                  '%',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFFF2D),
                ),
              ],
            ),
          ),

          // Plus sign
          Positioned(
            left: 193.h,
            top: 12.h,
            child: Text(
              '+',
              style: TextStyleHelper.instance.title18Bold
                  .copyWith(color: appTheme.colorFF9134),
            ),
          ),

          // Extra percentage
          Positioned(
            left: 223.h,
            top: 12.h,
            child: Row(
              children: [
                Text(
                  depositModel?.extraPercentage?.value ?? '2',
                  style: TextStyleHelper.instance.headline24Bold,
                ),
                Text(
                  '%',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFFF2D),
                ),
              ],
            ),
          ),

          // Up to text
          Positioned(
            left: 288.h,
            top: 4.h,
            child: Text(
              'up to',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),

          // Up to percentage
          Positioned(
            left: 285.h,
            top: 16.h,
            child: Text(
              depositModel?.upToPercentage?.value ?? '32%',
              style: TextStyleHelper.instance.title18Bold
                  .copyWith(color: appTheme.colorFFFFF8),
            ),
          ),
        ],
      ),
    );
  }
}
