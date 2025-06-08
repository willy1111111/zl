import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
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
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
      ),
      padding: EdgeInsets.all(15.h),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.h),
                child: CustomImageView(
                  imagePath: transaction.icon?.value ?? '',
                  height: 18.h,
                  width: 15.h,
                ),
              ),
              SizedBox(width: 7.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.title?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                    SizedBox(height: 5.h),
                    if (transaction.isWithdrawal?.value ?? false) ...[
                      _buildWithdrawalDetails(),
                      SizedBox(height: 5.h),
                    ],
                    Text(
                      transaction.dateTime?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transaction.amount?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF478A),
                  ),
                  SizedBox(height: 7.h),
                  Text(
                    'balance：${transaction.balance?.value ?? ''}',
                    style: TextStyleHelper.instance.body12Bold,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 5.h,
            child: Container(
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
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalDetails() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '· Received Amount:',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            Text(
              transaction.receivedAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '· Withdrawal fee:',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            Text(
              transaction.withdrawalFee?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ],
        ),
      ],
    );
  }
}
