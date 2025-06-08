import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/promotional_card_model.dart';

class PromotionalCardWidget extends StatelessWidget {
  final PromotionalCardModel? cardData;
  final VoidCallback? onTap;

  const PromotionalCardWidget({
    Key? key,
    this.cardData,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cardData == null) return SizedBox.shrink();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120.h,
        height: 120.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: cardData?.backgroundImage?.value ?? '',
              height: 120.h,
              width: 120.h,
              fit: BoxFit.cover,
            ),
            CustomImageView(
              imagePath: cardData?.overlayImage?.value ?? '',
              height: 120.h,
              width: 120.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 15.h,
              top: 3.h,
              child: CustomImageView(
                imagePath: cardData?.contentImage?.value ?? '',
                height: 99.h,
                width: 91.h,
              ),
            ),
            if (cardData?.showBadge?.value == true)
              Positioned(
                right: 4.h,
                top: 11.h,
                child: Container(
                  width: 16.h,
                  height: 16.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF335,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Center(
                    child: Text(
                      '${cardData?.badgeCount?.value ?? 0}',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ),
            if (cardData?.timerText?.value.isNotEmpty == true)
              Positioned(
                left: 24.h,
                top: 55.h,
                child: Text(
                  cardData?.timerText?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFFFDFF),
                ),
              ),
            if (cardData?.rainEffectImage?.value.isNotEmpty == true)
              Positioned(
                left: 1.h,
                top: 72.h,
                child: CustomImageView(
                  imagePath: cardData?.rainEffectImage?.value ?? '',
                  height: 22.h,
                  width: 118.h,
                ),
              ),
            if (cardData?.buttonImage?.value.isNotEmpty == true)
              Positioned(
                left: 12.h,
                top: 90.h,
                child: CustomImageView(
                  imagePath: cardData?.buttonImage?.value ?? '',
                  height: 30.h,
                  width: 96.h,
                ),
              ),
            Positioned(
              left: cardData?.buttonText?.value == 'Details' ? 34.h : 30.h,
              top: 88.h,
              child: Text(
                cardData?.buttonText?.value ?? '',
                style: TextStyleHelper.instance.title16BoldArial,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
