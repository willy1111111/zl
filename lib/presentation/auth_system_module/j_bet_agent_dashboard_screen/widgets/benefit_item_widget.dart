import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/benefit_item_model.dart';

class BenefitItemWidget extends StatelessWidget {
  final BenefitItemModel benefitItem;

  BenefitItemWidget({
    Key? key,
    required this.benefitItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 81.h,
          width: 118.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: benefitItem.backgroundImage?.value ?? '',
                height: 81.h,
                width: 118.h,
                fit: BoxFit.cover,
              ),
              if (benefitItem.iconPath?.value.isNotEmpty == true)
                Positioned(
                  top: benefitItem.overlayImage?.value.isNotEmpty == true
                      ? 24.h
                      : 14.h,
                  left: benefitItem.overlayImage?.value.isNotEmpty == true
                      ? 6.h
                      : 21.h,
                  child: CustomImageView(
                    imagePath: benefitItem.iconPath?.value ?? '',
                    height: benefitItem.overlayImage?.value.isNotEmpty == true
                        ? 36.h
                        : 48.h,
                    width: benefitItem.overlayImage?.value.isNotEmpty == true
                        ? 38.h
                        : 56.h,
                  ),
                ),
              if (benefitItem.overlayImage?.value.isNotEmpty == true)
                Positioned(
                  top: 9.h,
                  left: 4.h,
                  child: CustomImageView(
                    imagePath: benefitItem.overlayImage?.value ?? '',
                    height: 55.h,
                    width: 55.h,
                  ),
                ),
              if (benefitItem.badgeImage?.value.isNotEmpty == true)
                Positioned(
                  top: 38.h,
                  left: 37.h,
                  child: CustomImageView(
                    imagePath: benefitItem.badgeImage?.value ?? '',
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: benefitItem.title?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF9EAA),
              ),
              TextSpan(
                text: benefitItem.percentage?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
