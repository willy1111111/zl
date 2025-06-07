import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_history_item_model.dart';

class BonusHistoryTableRowWidget extends StatelessWidget {
  final BonusHistoryItemModel bonusHistoryItem;
  final bool isEvenRow;

  BonusHistoryTableRowWidget({
    Key? key,
    required this.bonusHistoryItem,
    required this.isEvenRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: isEvenRow ? Color(0xFF25272B) : appTheme.colorFF1E20,
      ),
      child: Row(
        children: [
          Container(
            width: 112.h,
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bonusHistoryItem.date?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Container(
            width: 78.h,
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bonusHistoryItem.teams?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Container(
            width: 78.h,
            height: 40.h,
            child: Center(
              child: Text(
                bonusHistoryItem.depositAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          Container(
            width: 78.h,
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bonusHistoryItem.bonus?.value ?? '',
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
