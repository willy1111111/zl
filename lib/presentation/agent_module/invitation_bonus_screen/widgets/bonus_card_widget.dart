import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;

  const BonusCardWidget({
    Key? key,
    required this.bonusCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.h,
      height: 60.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF8CD1,
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.h,
              left: 22.h,
              right: 22.h,
            ),
            child: Text(
              bonusCard.title?.value ?? '',
              style: TextStyleHelper.instance.body12BoldSFProText.copyWith(
                  color: bonusCard.titleColor?.value ?? Color(0xFF2B450B),
                  height: 1.25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.h,
              left: 37.h,
              right: 37.h,
            ),
            child: Text(
              bonusCard.amount?.value ?? '',
              style: TextStyleHelper.instance.title18BoldSFProText.copyWith(
                  color: bonusCard.amountColor?.value ?? Color(0xFF233F00),
                  height: 1.22),
            ),
          ),
        ],
      ),
    );
  }
}
