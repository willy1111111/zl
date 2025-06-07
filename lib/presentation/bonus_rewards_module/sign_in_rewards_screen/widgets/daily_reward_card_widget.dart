import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/daily_reward_model.dart';

class DailyRewardCardWidget extends StatelessWidget {
  final DailyRewardModel dailyReward;
  final bool isCurrentDay;

  const DailyRewardCardWidget({
    Key? key,
    required this.dailyReward,
    this.isCurrentDay = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.h,
      height: 62.h,
      decoration: BoxDecoration(
        color: isCurrentDay
            ? Color(0xFF009F41)
            : (dailyReward.isCompleted?.value ?? false)
                ? Color(0xFF25282D)
                : appTheme.colorFF1E20,
        border: Border.all(
          color: (dailyReward.isCompleted?.value ?? false)
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
                dailyReward.amount ?? '',
                style: TextStyleHelper.instance.body12Bold.copyWith(
                    color: isCurrentDay
                        ? appTheme.whiteCustom
                        : appTheme.colorFFC0C8),
              ),
              SizedBox(height: isCurrentDay ? 2.h : 7.h),
              CustomImageView(
                imagePath: dailyReward.coinImagePath?.value ??
                    ImageConstant.img1733643593,
                width: isCurrentDay ? 40.h : 24.h,
                height: isCurrentDay ? 40.h : 24.h,
              ),
            ],
          ),
          if (dailyReward.isCompleted?.value ?? false && !isCurrentDay)
            Positioned(
              bottom: 2.h,
              left: 0,
              right: 0,
              child: Center(
                child: CustomImageView(
                  imagePath: dailyReward.checkImagePath?.value ?? '',
                  width: 21.h,
                  height: 29.h,
                ),
              ),
            ),
          if (isCurrentDay && dailyReward.arrowImagePath?.value != null)
            Positioned(
              top: -12.h,
              left: 22.h,
              child: CustomImageView(
                imagePath: dailyReward.arrowImagePath?.value ?? '',
                width: 16.h,
                height: 47.h,
              ),
            ),
          if (isCurrentDay && dailyReward.bonusText?.value != null)
            Positioned(
              top: -12.h,
              left: 26.h,
              child: Text(
                dailyReward.bonusText?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
        ],
      ),
    );
  }
}
