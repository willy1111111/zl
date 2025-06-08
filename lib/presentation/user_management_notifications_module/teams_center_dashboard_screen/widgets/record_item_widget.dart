import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class RecordItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  RecordItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: icon,
            width: 26.h,
            height: 26.h,
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }
}
