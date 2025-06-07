import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: bonusCard.gradientColors ??
              [appTheme.blueCustom, appTheme.purpleCustom],
        ),
        borderRadius: BorderRadius.circular(bonusCard.borderRadius ?? 5.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Positioned(
            top: 8.h,
            right: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
          Column(
            crossAxisAlignment: bonusCard.isTitleCentered?.value ?? false
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bonusCard.title?.value ?? '',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: bonusCard.isTitleCentered?.value ?? false
                    ? TextAlign.center
                    : TextAlign.start,
              ),
              Text(
                bonusCard.amount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: bonusCard.isAmountCentered?.value ?? false
                    ? TextAlign.center
                    : TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
