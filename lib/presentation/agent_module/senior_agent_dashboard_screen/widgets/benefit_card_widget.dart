import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/benefit_card_model.dart';

class BenefitCardWidget extends StatelessWidget {
  final BenefitCardModel benefitCard;

  BenefitCardWidget({
    Key? key,
    required this.benefitCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.h,
      child: Column(
        children: [
          Container(
            height: 81.h,
            width: 118.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: benefitCard.backgroundImage?.value ?? '',
                  height: 81.h,
                  width: 118.h,
                  fit: BoxFit.cover,
                ),
                ...List.generate(
                  benefitCard.iconImages?.length ?? 0,
                  (index) => Positioned(
                    top: _getIconTop(index),
                    left: _getIconLeft(index),
                    child: CustomImageView(
                      imagePath: benefitCard.iconImages![index].value ?? '',
                      height: _getIconHeight(index),
                      width: _getIconWidth(index),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.h),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: benefitCard.title?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFF9EAA),
                ),
                TextSpan(
                  text: benefitCard.highlightText?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  double _getIconTop(int index) {
    switch (index) {
      case 0:
        return 52.h;
      case 1:
        return 37.h;
      case 2:
        return 66.h;
      default:
        return 42.h;
    }
  }

  double _getIconLeft(int index) {
    switch (index) {
      case 0:
        return 32.h;
      case 1:
        return 36.h;
      case 2:
        return 69.h;
      default:
        return 47.h;
    }
  }

  double _getIconHeight(int index) {
    switch (index) {
      case 0:
        return 36.h;
      case 1:
        return 55.h;
      case 2:
        return 17.h;
      default:
        return 48.h;
    }
  }

  double _getIconWidth(int index) {
    switch (index) {
      case 0:
        return 38.h;
      case 1:
        return 55.h;
      case 2:
        return 18.h;
      default:
        return 56.h;
    }
  }
}
