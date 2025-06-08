import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bonus_card_item_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardItemModel bonusCard;
  final VoidCallback? onButtonTap;

  const BonusCardWidget({
    Key? key,
    required this.bonusCard,
    this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        width: 307.h,
        height: 79.h,
        decoration: BoxDecoration(
            color: bonusCard.backgroundColor!.value,
            border: Border.all(color: bonusCard.borderColor!.value),
            borderRadius: BorderRadius.circular(5.h)),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
        child: Row(children: [
          _buildIconContainer(),
          SizedBox(width: 16.h),
          _buildContentSection(),
          SizedBox(width: 12.h),
          _buildActionButton(),
        ])));
  }

  Widget _buildIconContainer() {
    return Obx(() => Container(
        width: 56.h,
        height: 56.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            border: Border.all(color: bonusCard.iconBorderColor!.value),
            borderRadius: BorderRadius.circular(
                bonusCard.title!.value == 'Registration Bonus' ? 15.h : 56.h)),
        child: Stack(children: [
          ...List.generate(
              bonusCard.iconImages.length,
              (index) => Positioned(
                  top: bonusCard.iconPositions[index].value.dy,
                  left: bonusCard.iconPositions[index].value.dx,
                  child: CustomImageView(
                      imagePath: bonusCard.iconImages[index].value,
                      width: bonusCard.iconSizes[index].value.width,
                      height: bonusCard.iconSizes[index].value.height,
                      fit: BoxFit.cover))),
          if (bonusCard.experienceText?.value != null)
            Positioned(
                top: 20.h,
                left: 17.h,
                child: Container(
                    width: 49.h,
                    height: 15.h,
                    child: Text(bonusCard.experienceText!.value,
                        style: TextStyleHelper.instance.label9
                            .copyWith(color: appTheme.colorFFFFEF, shadows: [
                          Shadow(
                              offset: Offset(0, 1.h),
                              blurRadius: 2.h,
                              color: appTheme.blackCustom),
                        ])))),
        ])));
  }

  Widget _buildContentSection() {
    return Expanded(
        child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bonusCard.title!.value ?? '',
                      style: TextStyleHelper.instance.title16Bold),
                  SizedBox(height: 2.h),
                  Text(bonusCard.description!.value ?? '',
                      style: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.whiteCustom)),
                  SizedBox(height: 2.h),
                  Text(bonusCard.amount!.value ?? '',
                      style: TextStyleHelper.instance.title20Bold),
                ])));
  }

  Widget _buildActionButton() {
    return Obx(() {
      bool isOrangeGradient = bonusCard.buttonText!.value == 'Detail' ||
          bonusCard.buttonText!.value == 'Claim' &&
              bonusCard.isClaimable!.value;

      return CustomButton(
          text: bonusCard.buttonText!.value,
          onPressed: onButtonTap,
          buttonVariant: CustomButtonVariant.text,
          gradientType: isOrangeGradient
              ? CustomButtonGradient.orange
              : CustomButtonGradient.exchange,
          width: 80.h,
          height: 30.h,
          borderRadius: 15.h,
          textStyle: TextStyleHelper.instance.title18Bold.copyWith(
              color: isOrangeGradient
                  ? appTheme.whiteCustom
                  : appTheme.colorFF4747));
    });
  }
}
