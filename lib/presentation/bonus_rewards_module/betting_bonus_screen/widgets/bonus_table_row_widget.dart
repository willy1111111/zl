import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/betting_bonus_model.dart';

class BonusTableRowWidget extends StatelessWidget {
  final BonusTableRowModel bonusRow;
  final bool isEven;

  const BonusTableRowWidget({
    Key? key,
    required this.bonusRow,
    required this.isEven,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: Row(
        children: [
          Container(
            width: 116.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: isEven ? Color(0xFF25272B) : appTheme.colorFF1E20,
            ),
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            alignment: Alignment.centerLeft,
            child: Text(
              bonusRow.date?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 115.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: isEven ? Color(0xFF25272B) : appTheme.colorFF1E20,
            ),
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            alignment: Alignment.centerLeft,
            child: Text(
              bonusRow.team?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Container(
            width: 114.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: isEven ? Color(0xFF25272B) : appTheme.colorFF1E20,
            ),
            padding: EdgeInsets.symmetric(horizontal: 37.h),
            alignment: Alignment.centerLeft,
            child: Text(
              bonusRow.bonus?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
        ],
      ),
    );
  }
}
