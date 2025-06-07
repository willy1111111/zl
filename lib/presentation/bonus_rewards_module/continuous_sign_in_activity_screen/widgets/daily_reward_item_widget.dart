import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/daily_reward_model.dart';

class DailyRewardItemWidget extends StatelessWidget {
  final DailyRewardModel reward;
  final VoidCallback? onTap;

  const DailyRewardItemWidget({
    Key? key,
    required this.reward,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60.h,
            height: 62.h,
            decoration: BoxDecoration(
              color: (reward.isCurrent?.value ?? false)
                  ? Color(0xFF009F41)
                  : (reward.isCompleted?.value ?? false)
                      ? Color(0xFF25282D)
                      : appTheme.colorFF1E20,
              border: Border.all(
                color: (reward.isCompleted?.value ?? false) ||
                        (reward.isCurrent?.value ?? false)
                    ? Color(0xFFFFC600)
                    : appTheme.colorFF292F,
              ),
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      reward.amount?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold.copyWith(
                          color: (reward.isCurrent?.value ?? false)
                              ? appTheme.whiteCustom
                              : appTheme.colorFFC0C8),
                    ),
                    SizedBox(height: 4.h),
                    CustomImageView(
                      imagePath: reward.coinImage?.value ?? '',
                      width: (reward.isCurrent?.value ?? false) ? 40.h : 24.h,
                      height: (reward.isCurrent?.value ?? false) ? 40.h : 24.h,
                    ),
                  ],
                ),
                if (reward.isCompleted?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: CustomImageView(
                      imagePath: reward.checkImage?.value ?? '',
                      width: 21.h,
                      height: 29.h,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Day ${reward.day?.value ?? 0}',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          if (reward.isCurrent?.value ?? false) ...[
            SizedBox(height: 4.h),
            CustomImageView(
              imagePath: reward.arrowImage?.value ?? '',
              width: 16.h,
              height: 47.h,
            ),
            SizedBox(height: 4.h),
            Text(
              reward.bonusText?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ],
      ),
    );
  }
}
