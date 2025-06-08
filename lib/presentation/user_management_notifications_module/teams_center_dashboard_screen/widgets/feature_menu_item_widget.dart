import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class FeatureMenuItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String? highlightText;
  final VoidCallback onTap;

  FeatureMenuItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.highlightText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: appTheme.colorFF292F),
          ),
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: icon,
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyleHelper.instance.body14Bold,
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      text: subtitle,
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFABB6),
                      children: highlightText != null
                          ? [
                              TextSpan(
                                text: highlightText,
                                style: TextStyleHelper.instance.textStyle17
                                    .copyWith(color: appTheme.colorFF85D4),
                              ),
                            ]
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStroke,
              width: 7.h,
              height: 13.h,
            ),
          ],
        ),
      ),
    );
  }
}
