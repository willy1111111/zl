import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/unlock_reward_item_model.dart';

class UnlockRewardItemWidget extends StatelessWidget {
  final UnlockRewardItemModel unlockReward;

  const UnlockRewardItemWidget({
    Key? key,
    required this.unlockReward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.whiteCustom),
                borderRadius: BorderRadius.circular(12.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color99FFF3,
                    blurRadius: 3.h,
                    spreadRadius: 0,
                    offset: Offset(0, 2.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: unlockReward.backgroundImage?.value ?? '',
                    height: 66.h,
                    width: 64.h,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: CustomImageView(
                      imagePath: unlockReward.iconImage?.value ?? '',
                      height: unlockReward.iconImage?.value.contains('39x44') ??
                              false
                          ? 44.h
                          : 35.h,
                      width: unlockReward.iconImage?.value.contains('39x44') ??
                              false
                          ? 39.h
                          : 33.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              unlockReward.rewardText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFFFF4),
            ),
          ],
        ));
  }
}
