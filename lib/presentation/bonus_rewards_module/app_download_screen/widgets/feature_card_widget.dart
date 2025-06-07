import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class FeatureCardWidget extends StatelessWidget {
  final String backgroundImagePath;
  final String iconPath;
  final String text;
  final double cardWidth;
  final double cardHeight;
  final double iconWidth;
  final double iconHeight;

  const FeatureCardWidget({
    Key? key,
    required this.backgroundImagePath,
    required this.iconPath,
    required this.text,
    required this.cardWidth,
    required this.cardHeight,
    required this.iconWidth,
    required this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: backgroundImagePath,
            width: cardWidth,
            height: cardHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 8.h,
            left: 4.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: iconPath,
                  width: iconWidth,
                  height: iconHeight,
                ),
                SizedBox(width: 8.h),
                Container(
                  width: cardWidth - iconWidth - 20.h,
                  child: Text(
                    text,
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(height: 1.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
