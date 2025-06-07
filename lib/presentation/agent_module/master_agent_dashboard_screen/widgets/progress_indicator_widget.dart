import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final double progress;
  final String progressText;

  ProgressIndicatorWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.progress,
    required this.progressText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 13.h,
          width: 18.h,
        ),
        SizedBox(width: 16.h),
        Text(
          title,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFFFFF7),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            height: 10.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF0000,
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: progress,
              child: Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFFEE8A,
                  borderRadius: BorderRadius.circular(5.h),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Text(
          progressText,
          style: TextStyleHelper.instance.label10Bold
              .copyWith(color: appTheme.colorFFFFFF),
        ),
      ],
    );
  }
}
