import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/achievement_item_model.dart';

class AchievementItemWidget extends StatelessWidget {
  final AchievementItemModel achievementItem;
  final VoidCallback? onButtonTap;

  AchievementItemWidget({
    Key? key,
    required this.achievementItem,
    this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: achievementItem.iconPath?.value ?? '',
                    height: 19.h,
                    width: 21.h,
                  ),
                  SizedBox(width: 12.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          achievementItem.title?.value ?? '',
                          style: TextStyleHelper.instance.body14.copyWith(
                              color: appTheme.colorFF8089, height: 1.21),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Text(
                              'get',
                              style: TextStyleHelper.instance.body14.copyWith(
                                  color:
                                      achievementItem.isClaimed?.value ?? false
                                          ? Color(0xFF808994)
                                          : appTheme.whiteCustom),
                            ),
                            SizedBox(width: 8.h),
                            Text(
                              achievementItem.rewardAmount?.value ?? '',
                              style: TextStyleHelper.instance.body14Bold
                                  .copyWith(
                                      color: achievementItem.isClaimed?.value ??
                                              false
                                          ? Color(0xFF808994)
                                          : appTheme.whiteCustom),
                            ),
                            SizedBox(width: 8.h),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: achievementItem
                                            .currentProgress?.value ??
                                        '',
                                    style: TextStyleHelper.instance.body14Bold
                                        .copyWith(color: appTheme.colorFF85D4),
                                  ),
                                  TextSpan(
                                    text: ' /',
                                    style: TextStyleHelper.instance.body12
                                        .copyWith(color: appTheme.whiteCustom),
                                  ),
                                  TextSpan(
                                    text:
                                        achievementItem.totalRequired?.value ??
                                            '',
                                    style: TextStyleHelper.instance.body12
                                        .copyWith(color: appTheme.whiteCustom),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: achievementItem.buttonText?.value ?? '',
              backgroundColor: achievementItem.buttonColor?.value,
              textColor: achievementItem.textColor?.value,
              width: 80.h,
              height: 30.h,
              onTap: onButtonTap,
            ),
          ],
        ));
  }
}
