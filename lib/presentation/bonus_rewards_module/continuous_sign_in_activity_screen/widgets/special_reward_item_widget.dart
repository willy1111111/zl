import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/app_export.dart';
import '../../../../../theme/text_style_helper.dart';
import '../../../../../widgets/custom_app_bar.dart';
import '../../../../../widgets/custom_badge.dart';
import '../../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../../../../../widgets/custom_info_row.dart';
import '../../../../../widgets/custom_multi_styled_text.dart';
import '../../../../../widgets/custom_styled_text.dart';
import '../../../../../widgets/custom_tab_bar.dart';
import '../../../../../widgets/custom_warning_message.dart';
import '../models/continuous_sign_in_activity_model.dart';
import '../models/daily_reward_model.dart';
import '../models/special_reward_model.dart';
import 'daily_reward_item_widget.dart';
import 'special_reward_item_widget.dart';

class SpecialRewardItemWidget extends StatelessWidget {
  final SpecialRewardModel reward;
  final VoidCallback? onTap;

  const SpecialRewardItemWidget({
    Key? key,
    required this.reward,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: Color(reward.backgroundColor?.value ?? 0xFF006A2A),
          borderRadius: BorderRadius.circular(6.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.blackCustom.withAlpha(51),
              blurRadius: 8.h,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 48.h,
              height: 48.h,
              decoration: BoxDecoration(
                color: reward.isCompleted?.value ?? false
                    ? Color(reward.iconBackgroundColor?.value ?? 0xFF6B7971)
                    : null,
                gradient: !(reward.isCompleted?.value ?? false)
                    ? LinearGradient(
                        colors: [
                          Color(0xFFD8D908),
                          appTheme.colorFF2FA0,
                          Color(0xFF009E41)
                        ],
                        stops: [0.0, 0.5, 1.0],
                      )
                    : null,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom.withAlpha(51),
                    blurRadius: 4.h,
                    offset: Offset(0, 2.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Center(
                    child: CustomImageView(
                      imagePath: reward.iconImage?.value ?? '',
                      width: 36.h,
                      height: (reward.iconImage?.value.contains('e20d8191') ??
                              false)
                          ? 43.h
                          : 39.h,
                    ),
                  ),
                  if (reward.starImage?.value.isNotEmpty ?? false) ...[
                    Positioned(
                      top: 4.h,
                      right: 4.h,
                      child: CustomImageView(
                        imagePath: reward.starImage?.value ?? '',
                        width: 7.h,
                        height: 6.h,
                      ),
                    ),
                    Positioned(
                      bottom: 4.h,
                      left: 4.h,
                      child: CustomImageView(
                        imagePath: reward.starImage?.value ?? '',
                        width: 10.h,
                        height: 8.h,
                      ),
                    ),
                  ],
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Text(
                      reward.statusText?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reward.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: reward.isCompleted?.value ?? false
                            ? appTheme.whiteCustom
                            : appTheme.colorFF85D4),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    reward.subtitle?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: reward.isCompleted?.value ?? false
                            ? appTheme.whiteCustom
                            : appTheme.colorFF85D4),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CustomImageView(
                  imagePath: reward.statusImage?.value ?? '',
                  width: reward.isCompleted?.value ?? false ? 45.h : 53.h,
                  height: reward.isCompleted?.value ?? false ? 65.h : 67.h,
                ),
                if (reward.finishedImage?.value.isNotEmpty ?? false)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CustomImageView(
                      imagePath: reward.finishedImage?.value ?? '',
                      width: 56.h,
                      height: 67.h,
                    ),
                  ),
                Positioned(
                  bottom: 8.h,
                  left: 0,
                  right: 0,
                  child: Text(
                    reward.status?.value ?? '',
                    style: TextStyleHelper.instance.bodyTextBold.copyWith(
                        color: reward.isCompleted?.value ?? false
                            ? Color(0xFF66776D)
                            : appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
