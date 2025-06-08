import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/betting_record_item_model.dart';

class BettingRecordItemWidget extends StatelessWidget {
  final BettingRecordItemModel bettingRecord;
  final bool isLastItem;

  BettingRecordItemWidget({
    Key? key,
    required this.bettingRecord,
    this.isLastItem = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(
                bottom: BorderSide(
                  color: appTheme.colorFF282F,
                  width: 1,
                ),
              ),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: bettingRecord.gameIcon?.value ?? '',
            height: 18.h,
            width: 16.h,
          ),
          SizedBox(width: 6.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bettingRecord.gameName?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                SizedBox(height: 2.h),
                Text(
                  bettingRecord.dateTime?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold,
                ),
              ],
            ),
          ),
          Row(
            children: [
              _buildAmountSection(
                bettingRecord.betAmount?.value ?? '0',
                appTheme.colorFF8089,
              ),
              SizedBox(width: 95.h),
              _buildAmountSection(
                bettingRecord.payOut?.value ?? '0',
                (bettingRecord.isWin?.value ?? false)
                    ? Color(0xFF85D420)
                    : appTheme.colorFF8089,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAmountSection(String amount, Color textColor) {
    return Row(
      children: [
        Text(
          amount,
          style: TextStyleHelper.instance.body14Bold,
        ),
        SizedBox(width: 4.h),
        Container(
          width: 18.h,
          height: 18.h,
          decoration: BoxDecoration(
            color: appTheme.colorFFFFC6,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '₱',
              style: TextStyleHelper.instance.body13,
            ),
          ),
        ),
      ],
    );
  }
}
