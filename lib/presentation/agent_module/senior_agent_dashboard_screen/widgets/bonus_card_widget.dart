import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;
  final bool isFullWidth;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
    this.isFullWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: bonusCard.gradientColors ??
              [appTheme.blueCustom, appTheme.purpleCustom],
        ),
        borderRadius: BorderRadius.circular(bonusCard.borderRadius ?? 5.0),
      ),
      padding: EdgeInsets.all(10.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: (bonusCard.isTextCentered?.value ?? false)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Text(
                bonusCard.title?.value ?? '',
                style: TextStyleHelper.instance.body12Arial,
                textAlign: (bonusCard.isTextCentered?.value ?? false)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              SizedBox(height: 4.h),
              Text(
                bonusCard.amount?.value ?? '',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: (bonusCard.isTextCentered?.value ?? false)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
          Positioned(
            top: bonusCard.title?.value == 'Agent Ranking Bonus'
                ? 7.h
                : (bonusCard.title?.value == 'Registration Bonus' ||
                        bonusCard.title?.value == 'Deposit Rebate Bonus')
                    ? 7.h
                    : 9.h,
            right:
                bonusCard.title?.value == 'Agent Ranking Bonus' ? 93.h : 10.h,
            child: CustomImageView(
              imagePath: bonusCard.iconPath?.value ?? '',
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }
}
