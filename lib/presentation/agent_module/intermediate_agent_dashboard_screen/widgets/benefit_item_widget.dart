import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_highlight_text.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/benefit_item_model.dart';

class BenefitItemWidget extends StatelessWidget {
  final BenefitItemModel benefitModel;

  BenefitItemWidget({
    Key? key,
    required this.benefitModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 118.h,
          height: 81.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: benefitModel.backgroundPath?.value ??
                    ImageConstant.imgFrame2131329752,
                height: 81.h,
                width: 118.h,
                fit: BoxFit.cover,
              ),
              if (benefitModel.iconPath?.value != null)
                Positioned(
                  top: 24.h,
                  left: 32.h,
                  child: CustomImageView(
                    imagePath: benefitModel.iconPath?.value ?? '',
                    height: 36.h,
                    width: 38.h,
                  ),
                ),
              if (benefitModel.overlayPath?.value != null)
                Positioned(
                  top: 9.h,
                  left: 36.h,
                  child: CustomImageView(
                    imagePath: benefitModel.overlayPath?.value ?? '',
                    height: 55.h,
                    width: 55.h,
                  ),
                ),
              if (benefitModel.badgePath?.value != null)
                Positioned(
                  top: 38.h,
                  left: 69.h,
                  child: CustomImageView(
                    imagePath: benefitModel.badgePath?.value ?? '',
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        CustomHighlightText(
          mainText: benefitModel.mainText?.value ?? '',
          highlightText: benefitModel.highlightText?.value ?? '',
          mainTextColor: appTheme.colorFF9EAA,
          highlightTextColor: appTheme.colorFFFFC6,
          fontSize: 12.fSize,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          lineHeight: 1.0,
        ),
      ],
    );
  }
}
