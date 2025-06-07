import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/benefit_item_model.dart';

class BenefitItemWidget extends StatelessWidget {
  final BenefitItemModel benefit;

  BenefitItemWidget({
    Key? key,
    required this.benefit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: benefit.mainIcon?.value ?? '',
              height: benefit.overlayIcon?.value != null ? 38.h : 56.h,
              width: benefit.overlayIcon?.value != null ? 36.h : 48.h,
            ),
            if (benefit.overlayIcon?.value != null)
              Positioned(
                top: benefit.badgeIcon?.value != null ? -15.h : -5.h,
                left: benefit.badgeIcon?.value != null ? -4.h : -6.h,
                child: CustomImageView(
                  imagePath: benefit.overlayIcon?.value ?? '',
                  height: benefit.badgeIcon?.value != null ? 55.h : 42.h,
                  width: benefit.badgeIcon?.value != null ? 55.h : 42.h,
                ),
              ),
            if (benefit.badgeIcon?.value != null)
              Positioned(
                top: 29.h,
                left: 33.h,
                child: CustomImageView(
                  imagePath: benefit.badgeIcon?.value ?? '',
                  height: 18.h,
                  width: 17.h,
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: benefit.title?.value ?? '',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFF849F),
              ),
              TextSpan(
                text: benefit.value?.value ?? '',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
