import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/reward_item_model.dart';

class RewardItemWidget extends StatelessWidget {
  final RewardItemModel reward;
  final VoidCallback? onClaimTap;

  RewardItemWidget({
    Key? key,
    required this.reward,
    this.onClaimTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3A41,
        border: Border.all(color: appTheme.whiteCustom, width: 1.h),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Stack(
        children: [
          // Number Badge
          Positioned(
            top: -16.h,
            right: -16.h,
            child: Obx(() => Container(
                  width: 56.h,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: reward.badgeColor?.value ?? Color(0xFFCACACA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.h),
                      topRight: Radius.circular(3.h),
                      bottomLeft: Radius.circular(3.h),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      reward.numberBadge?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                )),
          ),

          // Main Content Row
          Row(
            children: [
              // Coin Images Stack
              Container(
                width: 80.h,
                height: 60.h,
                margin: EdgeInsets.only(right: 24.h),
                child: Stack(
                  children: [
                    Positioned(
                      left: 19.h,
                      top: 20.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 59.h,
                        width: 60.h,
                      ),
                    ),
                    Positioned(
                      left: 81.h,
                      top: 22.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage439,
                        height: 16.h,
                        width: 15.h,
                      ),
                    ),
                    Positioned(
                      left: 8.h,
                      top: 54.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage747,
                        height: 20.h,
                        width: 18.h,
                      ),
                    ),
                    Positioned(
                      left: 26.h,
                      top: 10.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage746,
                        height: 9.h,
                        width: 10.h,
                      ),
                    ),
                    Positioned(
                      left: 12.h,
                      top: 60.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.img3,
                        height: 37.h,
                        width: 55.h,
                      ),
                    ),
                  ],
                ),
              ),

              // Prize Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Your Prize: ',
                            style: TextStyleHelper.instance.title16,
                          ),
                          TextSpan(
                            text: reward.prizeAmount?.value ?? '',
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
                            text: reward.wageredAmount?.value ?? '',
                            style: TextStyleHelper.instance.body13
                                .copyWith(color: appTheme.colorFFB9C6),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'date：${reward.date?.value ?? ''}',
                      style: TextStyleHelper.instance.label10
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                  ],
                ),
              ),

              // Claim Button
              Obx(() => GestureDetector(
                    onTap: (reward.isClaimable?.value ?? false)
                        ? onClaimTap
                        : null,
                    child: Container(
                      width: 90.h,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: (reward.isClaimed?.value ?? false)
                            ? Color(0xFF737373)
                            : appTheme.colorFFFFC6,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Center(
                        child: Text(
                          (reward.isClaimed?.value ?? false)
                              ? 'Claimed'
                              : 'Claim',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: (reward.isClaimed?.value ?? false)
                                  ? appTheme.whiteCustom
                                  : appTheme.blackCustom),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
