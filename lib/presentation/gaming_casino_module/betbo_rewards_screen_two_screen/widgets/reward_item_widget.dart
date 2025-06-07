import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/reward_item_model.dart';

class RewardItemWidget extends StatelessWidget {
  final RewardItemModel rewardItem;
  final VoidCallback? onClaimTap;

  const RewardItemWidget({
    Key? key,
    required this.rewardItem,
    this.onClaimTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF3A41,
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Stack(
        children: [
          // Number Badge
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: rewardItem.badgeColor?.value ?? Color(0xFFCACACA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.h),
                  topRight: Radius.circular(3.h),
                  bottomRight: Radius.circular(3.h),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
              child: Text(
                rewardItem.number?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),

          // Coin Images Stack
          Positioned(
            left: 16.h,
            top: 20.h,
            child: SizedBox(
              width: 80.h,
              height: 59.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 59.h,
                    width: 60.h,
                  ),
                  Positioned(
                    top: 2.h,
                    right: 0,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage439,
                      height: 15.h,
                      width: 16.h,
                    ),
                  ),
                  Positioned(
                    top: 34.h,
                    left: 0,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage747,
                      height: 18.h,
                      width: 20.h,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 6.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage746,
                      height: 10.h,
                      width: 9.h,
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 4.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 55.h,
                      width: 37.h,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Content
          Positioned(
            left: 108.h,
            top: 15.h,
            right: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your Prize: ',
                        style: TextStyleHelper.instance.title16,
                      ),
                      TextSpan(
                        text: rewardItem.prizeAmount?.value ?? '',
                        style: TextStyleHelper.instance.title16
                            .copyWith(color: appTheme.colorFFFFBA),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your Wagered: ',
                        style: TextStyleHelper.instance.body13,
                      ),
                      TextSpan(
                        text: rewardItem.wageredAmount?.value ?? '',
                        style: TextStyleHelper.instance.body13
                            .copyWith(color: appTheme.colorFFB9C6),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'date：${rewardItem.date?.value ?? ''}',
                  style: TextStyleHelper.instance.label10
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),

          // Action Button
          Positioned(
            top: 59.h,
            right: 16.h,
            child: _buildActionButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    if (rewardItem.isClaimed?.value ?? false) {
      return Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF7373,
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        child: Text(
          'Claimed',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
      );
    } else if (rewardItem.isClaimable?.value ?? false) {
      return GestureDetector(
        onTap: onClaimTap,
        child: Container(
          decoration: BoxDecoration(
            color: appTheme.colorFFFFC6,
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.h),
          child: Text(
            'Claim',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.blackCustom),
          ),
        ),
      );
    }
    return SizedBox.shrink();
  }
}
