import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_record_model.dart';

class BonusTableWidget extends StatelessWidget {
  final BonusRecordModel bonusRecord;
  final int index;

  BonusTableWidget({
    Key? key,
    required this.bonusRecord,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xFF25272B) : appTheme.colorFF1E20,
      ),
      child: Row(
        children: [
          Container(
            width: 116.h,
            padding: EdgeInsets.only(left: 8.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bonusRecord.date?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Container(
            width: 115.h,
            child: Center(
              child: Text(
                bonusRecord.ranking?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Container(
            width: 114.h,
            child: Center(
              child: Text(
                bonusRecord.bonus?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
