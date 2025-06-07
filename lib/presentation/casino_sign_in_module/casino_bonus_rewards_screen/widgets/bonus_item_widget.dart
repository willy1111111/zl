import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bonus_item_model.dart';

class BonusItemWidget extends StatelessWidget {
  final BonusItemModel bonusItem;
  final VoidCallback? onClaimPressed;

  BonusItemWidget({
    Key? key,
    required this.bonusItem,
    this.onClaimPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF0C6E,
        border: Border.all(
          color: appTheme.colorFF55D5,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Row(
        children: [
          // Icon Container
          _buildIconContainer(),

          SizedBox(width: 16.h),

          // Bonus Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bonusItem.title?.value ?? '',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.19),
                ),
                SizedBox(height: 4.h),
                Text(
                  bonusItem.subtitle?.value ?? '',
                  style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
                ),
                SizedBox(height: 4.h),
                Text(
                  bonusItem.amount?.value ?? '',
                  style: TextStyleHelper.instance.title20Bold
                      .copyWith(height: 1.15),
                ),
              ],
            ),
          ),

          SizedBox(width: 16.h),

          // Claim Button
          CustomButton(
            text: 'Claim',
            variant: (bonusItem.isClaimable?.value ?? false)
                ? CustomButtonVariant.orange
                : CustomButtonVariant.textOnly,
            width: 80.h,
            height: 44.h,
            onPressed:
                (bonusItem.isClaimable?.value ?? false) ? onClaimPressed : null,
            textStyle: TextStyleHelper.instance.title18Bold.copyWith(
                color: (bonusItem.isClaimable?.value ?? false)
                    ? appTheme.whiteCustom
                    : appTheme.colorFF4747,
                height: 1.17),
          ),
        ],
      ),
    );
  }

  /// Builds the icon container with VIP elements if needed
  Widget _buildIconContainer() {
    return Container(
      height: 56.h,
      width: 56.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(
          color: appTheme.colorFFCF89,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Stack(
        children: [
          // Main gold coin icon
          if (bonusItem.hasVipElements?.value ?? false)
            Positioned(
              top: 29.h,
              left: 18.h,
              child: CustomImageView(
                imagePath: bonusItem.iconPath?.value ?? '',
                height: 30.h,
                width: 33.h,
              ),
            )
          else
            Center(
              child: CustomImageView(
                imagePath: bonusItem.iconPath?.value ?? '',
                height: 48.h,
                width: 52.h,
              ),
            ),

          // VIP elements (only for VIP bonus)
          if (bonusItem.hasVipElements?.value ?? false) ...[
            Positioned(
              top: 7.h,
              left: -11.h,
              child: CustomImageView(
                imagePath: bonusItem.vipBackgroundPath?.value ?? '',
                height: 51.h,
                width: 72.h,
              ),
            ),
            Positioned(
              top: 26.h,
              left: -7.h,
              child: CustomImageView(
                imagePath: bonusItem.vipBadgePath?.value ?? '',
                height: 39.h,
                width: 40.h,
              ),
            ),
            Positioned(
              top: -2.h,
              left: -9.h,
              child: CustomImageView(
                imagePath: bonusItem.vipCrownPath?.value ?? '',
                height: 40.h,
                width: 61.h,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
