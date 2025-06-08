import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transactionModel;

  TransactionItemWidget({
    Key? key,
    required this.transactionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactionModel.paymentMethod?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    transactionModel.date?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transactionModel.amount?.value ?? '',
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
                          color: transactionModel.statusColor?.value ??
                              appTheme.greyCustom,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        transactionModel.status?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFFABB6),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.infinity,
            height: 1.h,
            color: appTheme.color33191E,
          ),
        ],
      ),
    );
  }
}
