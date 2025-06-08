import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/reward_item_model.dart';

class RewardItemWidget extends StatelessWidget {
  final RewardItemModel rewardItem;
  final VoidCallback? onClaimPressed;

  const RewardItemWidget({
    Key? key,
    required this.rewardItem,
    this.onClaimPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 111.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: rewardItem.backgroundImagePath?.value ??
                ImageConstant.imgGroup14406,
            width: 345.h,
            height: 111.h,
          ),
          CustomImageView(
            imagePath: rewardItem.overlayImagePath?.value ?? '',
            width: 255.h,
            height: 111.h,
          ),
          Positioned(
            top: 24.h,
            right: 15.h,
            child: CustomImageView(
              imagePath: rewardItem.decorationImagePath?.value ?? '',
              width: 67.h,
              height: 87.h,
            ),
          ),
          Positioned(
            top: 12.h,
            left: 12.h,
            child: Container(
              width: 90.h,
              height: 87.h,
              decoration: BoxDecoration(
                color: rewardItem.backgroundColor?.value ?? Color(0xFF361C63),
                borderRadius: BorderRadius.circular(12.h),
                boxShadow: [
                  BoxShadow(
                    color:
                        (rewardItem.backgroundColor?.value ?? Color(0xFF361C63))
                            .withAlpha(77),
                    blurRadius: 15.h,
                    offset: Offset(0, 3.h),
                  ),
                ],
              ),
              padding: EdgeInsets.all(8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: rewardItem.iconPath?.value ?? '',
                    width: 44.h,
                    height: 44.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    rewardItem.title?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    rewardItem.date?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: _getRewardTextTop(),
            left: 125.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rewardItem.rewardType?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial.copyWith(
                      color: rewardItem.highlightColor?.value ??
                          appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Container(
                  width: 133.h,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyleHelper.instance.body13BoldArial,
                      children: _buildRewardTextSpans(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CustomImageView(
              imagePath: rewardItem.rightSectionImagePath?.value ?? '',
              width: 90.h,
              height: 111.h,
            ),
          ),
          Positioned(
            top: 10.h,
            right: 21.h,
            child: Column(
              children: [
                Text(
                  'Due Date',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFF7683),
                ),
                Text(
                  rewardItem.dueDate?.value ?? '0',
                  style: TextStyleHelper.instance.title20BoldArial,
                ),
                Text(
                  'Day',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Text(
                  rewardItem.timeRemaining?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial.copyWith(
                      color: (rewardItem.isExpired?.value ?? false)
                          ? Color(0xFFFF3837)
                          : appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 6.h,
            right: 6.h,
            child: GestureDetector(
              onTap: (rewardItem.isClaimable?.value ?? false)
                  ? onClaimPressed
                  : null,
              child: Container(
                width: 77.h,
                height: 30.h,
                decoration: BoxDecoration(
                  gradient: (rewardItem.isClaimable?.value ?? false)
                      ? LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                        )
                      : LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                        ),
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: Center(
                  child: Text(
                    'Claim',
                    style: TextStyleHelper.instance.body14BoldArial.copyWith(
                        color: (rewardItem.isClaimable?.value ?? false)
                            ? appTheme.whiteCustom
                            : appTheme.colorFF8089),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _getRewardTextTop() {
    String title = rewardItem.title?.value ?? '';
    if (title.toLowerCase().contains('red package')) {
      return 13.h;
    }
    return 28.h;
  }

  List<TextSpan> _buildRewardTextSpans() {
    String description = rewardItem.rewardDescription?.value ?? '';
    List<TextSpan> spans = [];

    if (description.contains('₱')) {
      List<String> parts = description.split('₱');
      for (int i = 0; i < parts.length; i++) {
        if (i > 0) {
          String amount = parts[i].split(' ')[0];
          spans.add(TextSpan(
            text: '₱$amount',
            style: TextStyleHelper.instance.textStyle16
                .copyWith(color: appTheme.colorFFFFC6),
          ));
          String remaining = parts[i].substring(amount.length);
          if (remaining.isNotEmpty) {
            spans.add(TextSpan(
              text: remaining,
              style: TextStyleHelper.instance.textStyle16
                  .copyWith(color: appTheme.whiteCustom),
            ));
          }
        } else {
          spans.add(TextSpan(
            text: parts[i],
            style: TextStyleHelper.instance.textStyle16
                .copyWith(color: appTheme.whiteCustom),
          ));
        }
      }
    } else {
      spans.add(TextSpan(
        text: description,
        style: TextStyleHelper.instance.textStyle16
            .copyWith(color: appTheme.whiteCustom),
      ));
    }

    return spans;
  }
}
