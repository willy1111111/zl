import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
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
          begin: Alignment(-0.5, -0.87),
          end: Alignment(0.5, 0.87),
          colors: bonusCard.gradientColors?.value ??
              [appTheme.blueCustom, appTheme.purpleCustom],
        ),
        borderRadius: BorderRadius.circular(7.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bonusCard.title?.value ?? '',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 4.h),
              Text(
                bonusCard.amount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold,
              ),
            ],
          ),
          Positioned(
            top: 7.h,
            right: 7.h,
            child: CustomImageView(
              imagePath: bonusCard.logoPath?.value ?? '',
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }
}
