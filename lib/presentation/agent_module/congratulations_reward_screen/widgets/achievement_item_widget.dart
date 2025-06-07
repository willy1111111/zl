import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/achievement_item_model.dart';

class AchievementItemWidget extends StatelessWidget {
  final AchievementItemModel achievementModel;
  final VoidCallback? onClaimTap;
  final VoidCallback? onInviteTap;

  AchievementItemWidget({
    Key? key,
    required this.achievementModel,
    this.onClaimTap,
    this.onInviteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                achievementModel.title?.value ?? '',
                style: TextStyleHelper.instance.body14.copyWith(
                    color:
                        achievementModel.textColor?.value ?? Color(0xFF808994)),
              ),
            ),
            Row(
              children: [
                Text(
                  achievementModel.currentProgress?.value ?? '',
                  style: TextStyleHelper.instance.body12.copyWith(
                      color: achievementModel.progressColor?.value ??
                          Color(0xFF808994),
                      fontSize: (achievementModel.isClaimed?.value ?? false)
                          ? 12.0
                          : 12.0), // Modified: Replaced bool with double value for fontSize
                ),
                Text(
                  '/${achievementModel.totalProgress?.value ?? ''}',
                  style: TextStyleHelper.instance.label10.copyWith(
                      color: (achievementModel.isClaimed?.value ?? false)
                          ? Color(0xFF808994)
                          : appTheme.whiteCustom),
                ),
                SizedBox(width: 8.h),
                GestureDetector(
                  onTap: (achievementModel.buttonText?.value == 'claim')
                      ? onClaimTap
                      : (achievementModel.buttonText?.value == 'invite')
                          ? onInviteTap
                          : null,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: achievementModel.buttonColor?.value ??
                          Color(0xFF737373),
                      borderRadius: BorderRadius.circular(15.h),
                    ),
                    child: Text(
                      achievementModel.buttonText?.value ?? '',
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
        Row(
          children: [
            Text(
              'get',
              style: TextStyleHelper.instance.body14.copyWith(
                  color:
                      achievementModel.textColor?.value ?? Color(0xFF808994)),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgJb17x20,
              height: 17.h,
              width: 20.h,
            ),
            SizedBox(width: 8.h),
            Text(
              achievementModel.rewardAmount?.value ?? '',
              style: TextStyleHelper.instance.body14Bold.copyWith(
                  color:
                      achievementModel.textColor?.value ?? Color(0xFF808994)),
            ),
          ],
        ),
      ],
    );
  }
}
