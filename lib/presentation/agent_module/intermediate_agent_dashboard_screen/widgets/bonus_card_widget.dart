import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCardModel;
  final bool isFullWidth;

  BonusCardWidget({
    Key? key,
    required this.bonusCardModel,
    this.isFullWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: bonusCardModel.gradientColors?.value ??
              [
                Color(0xFF14BFEC),
                appTheme.colorFF006C,
              ],
        ),
        borderRadius:
            BorderRadius.circular(bonusCardModel.borderRadius?.value ?? 7.h),
      ),
      padding: EdgeInsets.all(7.h),
      height: 58.h,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: bonusCardModel.isCenter?.value ?? false
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Text(
                bonusCardModel.title?.value ?? '',
                style: TextStyleHelper.instance.body12.copyWith(
                    color: appTheme.whiteCustom,
                    height:
                        bonusCardModel.title?.value.contains('Rebate') ?? false
                            ? 1.0
                            : 1.17),
                textAlign: bonusCardModel.isCenter?.value ?? false
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              SizedBox(
                  height:
                      bonusCardModel.title?.value.contains('Deposit') ?? false
                          ? 6.h
                          : 3.h),
              Text(
                bonusCardModel.amount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold.copyWith(
                    color: appTheme.whiteCustom,
                    height:
                        bonusCardModel.title?.value.contains('Rebate') ?? false
                            ? 1.0
                            : 1.19),
                textAlign: bonusCardModel.isCenter?.value ?? false
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
          Positioned(
            top: bonusCardModel.title?.value.contains('Achievement') ?? false
                ? 0.h
                : 2.h,
            right: isFullWidth ? 138.h : 0.h,
            child: CustomImageView(
              imagePath:
                  bonusCardModel.iconPath?.value ?? ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }
}
