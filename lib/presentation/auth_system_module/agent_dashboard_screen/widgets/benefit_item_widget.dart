import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/benefit_item_model.dart';

class BenefitItemWidget extends StatelessWidget {
  final BenefitItemModel benefitItemModel;

  BenefitItemWidget({
    Key? key,
    required this.benefitItemModel,
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
                imagePath: benefitItemModel.backgroundImage?.value ?? '',
                height: 81.h,
                width: 118.h,
                fit: BoxFit.cover,
              ),
              if (benefitItemModel.iconImage?.value.isNotEmpty ?? false)
                Positioned.fill(
                  child: Center(
                    child: CustomImageView(
                      imagePath: benefitItemModel.iconImage?.value ?? '',
                      height: 36.h,
                      width: 38.h,
                    ),
                  ),
                ),
              if (benefitItemModel.overlayImage?.value.isNotEmpty ?? false)
                Positioned.fill(
                  child: Center(
                    child: CustomImageView(
                      imagePath: benefitItemModel.overlayImage?.value ?? '',
                      height: 55.h,
                      width: 55.h,
                    ),
                  ),
                ),
              if (benefitItemModel.badgeImage?.value.isNotEmpty ?? false)
                Positioned(
                  bottom: 8.h,
                  right: 8.h,
                  child: CustomImageView(
                    imagePath: benefitItemModel.badgeImage?.value ?? '',
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            style: TextStyleHelper.instance.body12,
            children: [
              TextSpan(
                text: benefitItemModel.title?.value ?? '',
                style: TextStyleHelper.instance.textStyle8
                    .copyWith(color: appTheme.colorFF9EAA),
              ),
              TextSpan(
                text: benefitItemModel.value?.value ?? '',
                style: TextStyleHelper.instance.textStyle8
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
