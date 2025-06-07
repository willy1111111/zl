import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/special_reward_model.dart';

class SpecialRewardItemWidget extends StatelessWidget {
  final SpecialRewardModel? specialReward;
  final bool hasExtraLabel;

  const SpecialRewardItemWidget({
    Key? key,
    this.specialReward,
    this.hasExtraLabel = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (specialReward == null) return SizedBox.shrink();

    return Container(
      width: (specialReward?.width?.value ?? 70).h,
      height: (specialReward?.height?.value ?? 70).h,
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(12.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color99FFF3,
            blurRadius: 3.h,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: specialReward?.imagePath?.value ?? '',
            width: (specialReward?.width?.value ?? 70).h - 2.h,
            height: (specialReward?.height?.value ?? 70).h,
            fit: BoxFit.cover,
          ),
          if (specialReward?.iconPath?.value != null)
            Positioned(
              top: hasExtraLabel ? 0 : 16.h,
              left: hasExtraLabel ? 3.h : 16.h,
              child: CustomImageView(
                imagePath: specialReward?.iconPath?.value ?? '',
                width: hasExtraLabel ? 64.h : 38.h,
                height: hasExtraLabel ? 64.h : 38.h,
              ),
            ),
          if (hasExtraLabel)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 19.h,
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.whiteCustom),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(9.h),
                    bottomRight: Radius.circular(9.h),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                  ),
                ),
                child: Center(
                  child: Text(
                    'EXTRA',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
