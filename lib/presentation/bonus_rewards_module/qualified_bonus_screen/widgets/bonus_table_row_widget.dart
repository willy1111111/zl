import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_table_row_model.dart';

class BonusTableRowWidget extends StatelessWidget {
  final BonusTableRowModel bonusData;

  BonusTableRowWidget({
    Key? key,
    required this.bonusData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 116.h,
          height: 40.h,
          color: bonusData.backgroundColor?.value ?? Color(0xFF25272B),
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              bonusData.date?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ),
        Container(
          width: 115.h,
          height: 40.h,
          color: bonusData.backgroundColor?.value ?? Color(0xFF25272B),
          child: Center(
            child: Text(
              bonusData.teamId?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ),
        Container(
          width: 114.h,
          height: 40.h,
          color: bonusData.backgroundColor?.value ?? Color(0xFF25272B),
          child: Center(
            child: Text(
              bonusData.bonusAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
        ),
      ],
    );
  }
}
