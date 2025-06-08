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
          _buildTransactionInfo(),
          _buildAmountAndStatus(),
        ],
      ),
    );
  }

  Widget _buildTransactionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transaction.method?.value ?? '',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFFABB6),
        ),
        SizedBox(height: 4.h),
        Text(
          transaction.dateTime?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFFABB6),
        ),
      ],
    );
  }

  Widget _buildAmountAndStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          transaction.amount?.value ?? '',
          style: TextStyleHelper.instance.title16Bold,
        ),
        SizedBox(height: 4.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 6.h,
              height: 6.h,
              decoration: BoxDecoration(
                color: transaction.statusColor?.value ?? Color(0xFF18E014),
                borderRadius: BorderRadius.circular(3.h),
              ),
            ),
            SizedBox(width: 8.h),
            Text(
              transaction.status?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFABB6),
            ),
          ],
        ),
      ],
    );
  }
}
