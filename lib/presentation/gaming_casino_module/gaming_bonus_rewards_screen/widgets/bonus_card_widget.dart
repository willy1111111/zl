import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;
  final VoidCallback? onClaimPressed;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
    this.onClaimPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: appTheme.whiteCustom,
            borderRadius: BorderRadius.circular(5.h),
            border: Border.all(
              color: bonusCard.borderColor?.value ?? Color(0xFF74B200),
              width: 2.h,
            ),
            boxShadow: [
              BoxShadow(
                color: bonusCard.shadowColor?.value ?? Color(0x33045C17),
                offset: Offset(0, 4.h),
                blurRadius: 4.h,
              ),
            ],
          ),
          child: Row(
            children: [
              // Icon Container
              Container(
                width: 56.h,
                height: 56.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  border: Border.all(
                    color:
                        bonusCard.iconBorderColor?.value ?? Color(0xFFCF8900),
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(28.h),
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: bonusCard.iconPath?.value ?? '',
                    width: 56.h,
                    height: 56.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 16.h),

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bonusCard.title?.value ?? '',
                      style: TextStyleHelper.instance.title16
                          .copyWith(color: appTheme.colorFF1F17, height: 1.19),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      bonusCard.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.colorFF7E7A, height: 1.17),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      bonusCard.amount?.value ?? '',
                      style: TextStyleHelper.instance.title22Bold
                          .copyWith(height: 1.23),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 16.h),

              // Claim Button
              GestureDetector(
                onTap: (bonusCard.isClaimed?.value ?? true)
                    ? null
                    : onClaimPressed,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                  constraints: BoxConstraints(
                    minWidth: 80.h,
                    minHeight: 30.h,
                  ),
                  decoration: BoxDecoration(
                    color: bonusCard.buttonColor?.value ?? Color(0xFFFFC600),
                    borderRadius: BorderRadius.circular(15.h),
                  ),
                  child: Center(
                    child: Text(
                      bonusCard.buttonText?.value ?? '',
                      style: TextStyleHelper.instance.title18.copyWith(
                          color: bonusCard.buttonTextColor?.value ??
                              appTheme.blackCustom,
                          height: 1.17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
