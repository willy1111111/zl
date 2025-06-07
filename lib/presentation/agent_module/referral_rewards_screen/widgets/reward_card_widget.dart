import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/reward_card_model.dart';

class RewardCardWidget extends StatelessWidget {
  final RewardCardModel rewardCard;
  final double? width;

  const RewardCardWidget({
    Key? key,
    required this.rewardCard,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 93.h,
      height: 52.h,
      decoration: BoxDecoration(
        color: appTheme.colorFFD9D9,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 14.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rewardCard.title?.value ?? '',
            style: TextStyleHelper.instance.label11Bold,
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              rewardCard.amount?.value ?? '',
              style: TextStyleHelper.instance.title19Bold.copyWith(shadows: [
                Shadow(
                  color: appTheme.colorFF0029,
                  offset: Offset(0, 1.h),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
