import 'package:flutter/material.dart';

import '../../../../widgets/custom_image_view.dart';

import '../../../../widgets/custom_highlight_text.dart';

import '../../../../core/app_export.dart';

class BenefitCardWidget extends StatelessWidget {
  final String backgroundImagePath;
  final String? iconImagePath;
  final String? overlayImagePath;
  final String? badgeImagePath;
  final String mainText;
  final String highlightText;

  BenefitCardWidget({
    Key? key,
    required this.backgroundImagePath,
    this.iconImagePath,
    this.overlayImagePath,
    this.badgeImagePath,
    required this.mainText,
    required this.highlightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 81.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: backgroundImagePath,
                height: 81.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              if (iconImagePath != null)
                Positioned(
                  top: iconImagePath!.contains('tdr2') ? 24.h : 14.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomImageView(
                      imagePath: iconImagePath!,
                      height: iconImagePath!.contains('tdr2') ? 36.h : 48.h,
                      width: iconImagePath!.contains('tdr2') ? 38.h : 56.h,
                    ),
                  ),
                ),
              if (overlayImagePath != null)
                Positioned(
                  top: 9.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomImageView(
                      imagePath: overlayImagePath!,
                      height: 55.h,
                      width: 55.h,
                    ),
                  ),
                ),
              if (badgeImagePath != null)
                Positioned(
                  top: 38.h,
                  right: 13.h,
                  child: CustomImageView(
                    imagePath: badgeImagePath!,
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        CustomHighlightText(
          mainText: mainText,
          highlightText: highlightText,
          mainTextColor: appTheme.colorFFFFF7,
          highlightTextColor: appTheme.colorFFFFC6,
          fontSize: 12.fSize,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          marginTop: 2.h,
        ),
      ],
    );
  }
}
