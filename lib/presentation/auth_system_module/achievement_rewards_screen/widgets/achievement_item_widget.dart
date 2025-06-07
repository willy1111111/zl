import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../models/achievement_rewards_model.dart';

class AchievementItemWidget extends StatelessWidget {
  final AchievementModel achievement;
  final VoidCallback? onButtonPressed;

  AchievementItemWidget({
    Key? key,
    required this.achievement,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  achievement.title?.value ?? '',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: _getTextColor(), height: 1.21),
                ),
              ),
              SizedBox(width: 8.h),
              _buildProgressText(),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildRewardSection(),
              _buildActionButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressText() {
    bool isCompleted = achievement.isCompleted?.value ?? false;
    int current = achievement.currentProgress?.value ?? 0;
    int target = achievement.targetProgress?.value ?? 0;

    if (isCompleted && current == target) {
      return Text(
        '$current/$target',
        style: TextStyleHelper.instance.body14
            .copyWith(color: appTheme.whiteCustom, height: 1.21),
      );
    } else {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$current',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            TextSpan(
              text: '/$target',
              style: TextStyleHelper.instance.label10,
            ),
          ],
        ),
      );
    }
  }

  Widget _buildRewardSection() {
    return Row(
      children: [
        Text(
          'get',
          style: TextStyleHelper.instance.body14
              .copyWith(color: _getTextColor(), height: 1.21),
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.imgJb,
          width: 20.h,
          height: 17.h,
        ),
        SizedBox(width: 8.h),
        Text(
          '+ ${achievement.rewardAmount?.value ?? ''}',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: _getTextColor(), height: 1.21),
        ),
      ],
    );
  }

  Widget _buildActionButton() {
    return CustomButton(
      text: achievement.buttonText?.value ?? '',
      onPressed: onButtonPressed,
      backgroundColor: achievement.buttonColor?.value ?? Color(0xFF737373),
      textColor: achievement.textColor?.value ?? appTheme.blackCustom,
      borderRadius: 15.0,
      fontSize: 14.0,
      buttonType: CustomButtonType.filled,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
    );
  }

  Color _getTextColor() {
    bool isCompleted = achievement.isCompleted?.value ?? false;
    bool isClaimed = achievement.isClaimed?.value ?? false;

    if (isClaimed) {
      return Color(0xFF808994);
    } else if (isCompleted) {
      return appTheme.whiteCustom;
    } else {
      return appTheme.whiteCustom;
    }
  }
}
