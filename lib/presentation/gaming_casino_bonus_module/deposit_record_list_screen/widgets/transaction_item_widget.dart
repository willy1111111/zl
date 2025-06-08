import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transaction;

  TransactionItemWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.paymentMethod?.value ?? '',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFFABB6),
              ),
              Text(
                transaction.amount?.value ?? '',
                style: TextStyleHelper.instance.title16BoldArial,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transaction.dateTime?.value ?? '',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFFABB6),
              ),
              Row(
                children: [
                  Container(
                    width: 6.h,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color:
                          transaction.statusColor?.value ?? appTheme.greyCustom,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    transaction.status?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h),
            height: 1.h,
            width: double.maxFinite,
            color: appTheme.color33191E,
          ),
        ],
      ),
    );
  }
}
