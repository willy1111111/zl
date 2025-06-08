import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/withdrawal_history_controller.dart';
import '../models/withdrawal_transaction_model.dart';

class WithdrawalTransactionItem extends StatelessWidget {
  final WithdrawalTransactionModel transaction;

  WithdrawalTransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  var controller = Get.find<WithdrawalHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.color994147,
            width: 1.h,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          children: [
            SizedBox(
              width: 112.h,
              child: Text(
                transaction.dateTime?.value ?? '',
                style: TextStyleHelper.instance.body12Regular
                    .copyWith(height: 1.17),
              ),
            ),
            SizedBox(
              width: 118.h,
              child: Text(
                transaction.amount?.value ?? '',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Medium
                    .copyWith(height: 1.17),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 6.h,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color:
                          transaction.statusColor?.value ?? Color(0xFF808994),
                      shape: BoxShape.circle,
                    ),
                    margin: EdgeInsets.only(right: 8.h),
                  ),
                  Text(
                    transaction.status?.value ?? '',
                    style: TextStyleHelper.instance.body13Bold2
                        .copyWith(height: 1.15),
                  ),
                  if (transaction.showInfoIcon?.value ?? false)
                    GestureDetector(
                      onTap: () => controller.onInfoIconTapped(transaction),
                      child: Container(
                        margin: EdgeInsets.only(left: 4.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSubtractBlueGray400,
                          height: 14.h,
                          width: 14.h,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
