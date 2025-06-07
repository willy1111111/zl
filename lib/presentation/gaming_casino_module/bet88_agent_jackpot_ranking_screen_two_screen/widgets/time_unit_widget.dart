import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';

class TimeUnitWidget extends StatelessWidget {
  final String value;
  final String unit;

  TimeUnitWidget({
    Key? key,
    required this.value,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 32.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.whiteCustom),
          ),
          Text(
            unit,
            style: TextStyleHelper.instance.label8,
          ),
        ],
      ),
    );
  }
}
