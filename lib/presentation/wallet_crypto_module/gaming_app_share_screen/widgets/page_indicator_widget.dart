import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class PageIndicatorWidget extends StatelessWidget {
  final bool isActive;

  PageIndicatorWidget({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6.h,
      height: 6.h,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(3.h),
      ),
      child: Opacity(
        opacity: isActive ? 1.0 : 0.5,
        child: Container(
          decoration: BoxDecoration(
            color: appTheme.whiteCustom,
            borderRadius: BorderRadius.circular(3.h),
          ),
        ),
      ),
    );
  }
}
