import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/deposit_record_item_model.dart';

class DepositRecordItemWidget extends StatelessWidget {
  final DepositRecordItemModel depositRecord;

  DepositRecordItemWidget({
    Key? key,
    required this.depositRecord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.color33191E,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  depositRecord.paymentMethod?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFFABB6),
                ),
                SizedBox(height: 1.h),
                Text(
                  depositRecord.dateTime?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFFABB6),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                depositRecord.amount?.value ?? '',
                style: TextStyleHelper.instance.title16BoldArial,
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.h,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: depositRecord.statusColor?.value ??
                          appTheme.greyCustom,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    depositRecord.status?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
