import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;
  final VoidCallback onButtonPressed;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307.h,
      height: 79.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF0C6E,
        border: Border.all(
          color: appTheme.colorFF55D5,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(5.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          // Icon Container
          Container(
            width: 58.h,
            height: 57.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(28.h),
              border: Border.all(
                color: appTheme.colorFFCF89,
                width: 1.h,
              ),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: bonusCard.iconPath?.value ?? '',
                height: 52.h,
                width: 52.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 16.h),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  bonusCard.title?.value ?? '',
                  style: TextStyleHelper.instance.title16BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.19),
                ),
                SizedBox(height: 1.h),
                Text(
                  bonusCard.bonusLabel?.value ?? '',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(color: appTheme.whiteCustom, height: 1.21),
                ),
                SizedBox(height: 1.h),
                Text(
                  bonusCard.bonusAmount?.value ?? '',
                  style: TextStyleHelper.instance.title20BoldArial
                      .copyWith(height: 1.15),
                ),
              ],
            ),
          ),

          // Button
          GestureDetector(
            onTap: onButtonPressed,
            child: Container(
              width: 80.h,
              height: 30.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFffbe1a),
                    appTheme.colorFFD58D,
                  ],
                ),
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Center(
                child: Text(
                  bonusCard.buttonText?.value ?? '',
                  style: TextStyleHelper.instance.title18BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
