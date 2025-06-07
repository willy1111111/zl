import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class ChartLegendItemWidget extends StatelessWidget {
  final String title;
  final bool isActive;

  ChartLegendItemWidget({
    Key? key,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF85D420) : appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(4.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyleHelper.instance.body12Bold.copyWith(
              color: isActive ? Color(0xFF85D420) : appTheme.colorFF8089),
        ),
      ),
    );
  }
}
