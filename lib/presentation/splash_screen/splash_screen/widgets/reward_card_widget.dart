import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/reward_card_model.dart';

class RewardCardWidget extends StatelessWidget {
  final RewardCardModel rewardModel;
  final double? width;
  final double? height;

  const RewardCardWidget({
    Key? key,
    required this.rewardModel,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 141.h,
      height: height ?? 52.h,
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
        border: Border.all(
          color: appTheme.whiteCustom,
          width: 0,
        ),
      ),
      padding: EdgeInsets.all(8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            rewardModel.title?.value ?? '',
            style: TextStyleHelper.instance.title22BoldArial.copyWith(
                color: rewardModel.titleColor?.value ?? Color(0xFFFFD800),
                fontSize: (width != null && width! < 100)
                    ? 14.0
                    : null), // Modified: Fixed bool to double type assignment
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              rewardModel.amount?.value ?? '',
              style: TextStyleHelper.instance.title19BoldArial.copyWith(
                  color: rewardModel.amountColor?.value ?? Color(0xFF8FFF00),
                  shadows: [
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
