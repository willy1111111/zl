import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class TabItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isActive;

  TabItemWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 20.h,
          width: 20.h,
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: TextStyleHelper.instance.body12.copyWith(
              color: isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
        ),
        if (isActive)
          Container(
            margin: EdgeInsets.only(top: 2.h),
            width: 36.h,
            height: 2.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(1.h),
            ),
          ),
      ],
    );
  }
}
