import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/achievement_item_model.dart';

class AchievementItemWidget extends StatelessWidget {
  final AchievementItemModel achievementItem;
  final VoidCallback? onClaimTap;

  AchievementItemWidget({
    Key? key,
    required this.achievementItem,
    this.onClaimTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Achievement Progress Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                achievementItem.title?.value ?? '',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: _getTitleColor()),
              ),
            ),
            SizedBox(width: 8.h),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: achievementItem.currentProgress?.value ?? '0',
                        style: TextStyleHelper.instance.headline32Bold.copyWith(
                            color: _getCurrentProgressColor(),
                            fontSize: _getCurrentProgressFontSize()),
                      ),
                      TextSpan(
                        text: '/${achievementItem.maxProgress?.value ?? '0'}',
                        style: TextStyleHelper.instance.label10
                            .copyWith(color: _getMaxProgressColor()),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.h),
                GestureDetector(
                  onTap: onClaimTap,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: _getStatusButtonColor(),
                      borderRadius: BorderRadius.circular(15.h),
                    ),
                    child: Text(
                      _getStatusText(),
                      style: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.blackCustom),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 8.h),

        // Reward Row
        Row(
          children: [
            Text(
              'get',
              style: TextStyleHelper.instance.body14
                  .copyWith(color: _getRewardTextColor()),
            ),
            SizedBox(width: 4.h),
            CustomImageView(
              imagePath: ImageConstant.imgJb,
              width: 20.h,
              height: 17.h,
            ),
            SizedBox(width: 4.h),
            Text(
              ' + ${achievementItem.rewardAmount?.value ?? '₱0.00'}',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: _getRewardAmountColor()),
            ),
          ],
        ),
      ],
    );
  }

  Color _getTitleColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF808994);
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return Color(0xFF808994);
    }
  }

  double _getCurrentProgressFontSize() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return 10.fSize;
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return 16.fSize;
    }
  }

  Color _getCurrentProgressColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF808994);
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return Color(0xFF85D420);
    }
  }

  Color _getMaxProgressColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF808994);
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return appTheme.whiteCustom;
    }
  }

  Color _getStatusButtonColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF737373);
      case AchievementStatus.claimable:
        return Color(0xFFFFC600);
      case AchievementStatus.invite:
      default:
        return Color(0xFF85D420);
    }
  }

  String _getStatusText() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return 'Claimed';
      case AchievementStatus.claimable:
        return 'claim';
      case AchievementStatus.invite:
      default:
        return 'invite';
    }
  }

  Color _getRewardTextColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF808994);
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return appTheme.whiteCustom;
    }
  }

  Color _getRewardAmountColor() {
    switch (achievementItem.status?.value) {
      case AchievementStatus.claimed:
        return Color(0xFF808994);
      case AchievementStatus.claimable:
      case AchievementStatus.invite:
      default:
        return appTheme.whiteCustom;
    }
  }
}
