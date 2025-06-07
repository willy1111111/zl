import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bonus_item_model.dart';

class BonusItemWidget extends StatelessWidget {
  final BonusItemModel bonusItem;

  BonusItemWidget({Key? key, required this.bonusItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildIcon(),
            SizedBox(width: 12.h),
            Text(
              bonusItem.title?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFC0C8),
            ),
          ],
        ),
        _buildAmountSection(),
      ],
    );
  }

  Widget _buildIcon() {
    if (bonusItem.isRankingBonus?.value ?? false) {
      return Stack(
        children: [
          Container(
            height: 24.h,
            width: 24.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF54D1,
              borderRadius: BorderRadius.circular(5.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 2.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgSubtractAmberA400,
                height: 9.h,
                width: 12.h,
              ),
            ),
          ),
          Positioned(
            top: 4.h,
            right: 4.h,
            child: Container(
              height: 2.h,
              width: 3.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFFFC6,
                borderRadius: BorderRadius.circular(1.h),
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomImageView(
        imagePath: bonusItem.iconPath?.value ?? '',
        height: 24.h,
        width: 24.h,
      );
    }
  }

  Widget _buildAmountSection() {
    if (bonusItem.hasInfo?.value ?? false) {
      return Row(
        children: [
          Text(
            bonusItem.amount?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFFFC6),
          ),
          SizedBox(width: 8.h),
          Text(
            bonusItem.subtitle?.value ?? '',
            style: TextStyleHelper.instance.label10Bold,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgFrame14627,
            height: 10.h,
            width: 10.h,
          ),
        ],
      );
    } else {
      return Text(
        bonusItem.amount?.value ?? '',
        style: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFFFFC6),
      );
    }
  }
}
