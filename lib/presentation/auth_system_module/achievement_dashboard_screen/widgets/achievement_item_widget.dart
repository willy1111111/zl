import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/achievement_dashboard_model.dart';

class AchievementItemWidget extends StatelessWidget {
  final AchievementDashboardModel achievement;
  final VoidCallback? onButtonPressed;

  AchievementItemWidget({
    Key? key,
    required this.achievement,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    achievement.title?.value ?? '',
                    style: TextStyleHelper.instance.body14.copyWith(
                        color:
                            Color(achievement.textColor?.value ?? 0xFF808994),
                        height: 1.21),
                  ),
                ),
                SizedBox(width: 8.h),
                Row(
                  children: [
                    Text(
                      '${achievement.currentProgress?.value ?? 0} ',
                      style: TextStyleHelper.instance.body12.copyWith(
                          color: achievement.isCompleted?.value ?? false
                              ? Color(0xFF85D420)
                              : appTheme.whiteCustom,
                          fontSize: (achievement.isCompleted?.value ?? false)
                              ? 12.0
                              : 12.0,
                          height:
                              1.21), // Modified: Replaced bool with double for fontSize
                    ),
                    Text(
                      '/${achievement.targetProgress?.value ?? 0}',
                      style: TextStyleHelper.instance.label10
                          .copyWith(height: 1.4),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'get',
                      style: TextStyleHelper.instance.body14.copyWith(
                          color:
                              Color(achievement.textColor?.value ?? 0xFF808994),
                          height: 1.21),
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgJb,
                      width: 20.h,
                      height: 17.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      ' + ${achievement.rewardAmount?.value ?? ''}',
                      style: TextStyleHelper.instance.body14Bold.copyWith(
                          color:
                              Color(achievement.textColor?.value ?? 0xFF808994),
                          height: 1.21),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onButtonPressed,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      color:
                          Color(achievement.buttonColor?.value ?? 0xFF737373),
                      borderRadius: BorderRadius.circular(15.h),
                    ),
                    child: Text(
                      achievement.buttonText?.value ?? '',
                      style: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.blackCustom, height: 1.21),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
