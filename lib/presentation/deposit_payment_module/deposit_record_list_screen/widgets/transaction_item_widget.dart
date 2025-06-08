import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../controller/deposit_record_list_controller.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transaction;

  TransactionItemWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  var controller = Get.find<DepositRecordListController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onTransactionTapped(transaction),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 4.h),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.method?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFFABB6),
                ),
                SizedBox(height: 5.h),
                Text(
                  transaction.dateTime?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  transaction.amount?.value ?? '',
                  style: TextStyleHelper.instance.title16BoldArial,
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6.h,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: transaction.statusColor?.value ??
                            appTheme.greyCustom,
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      transaction.status?.value ?? '',
                      style: TextStyleHelper.instance.body12BoldArial,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
