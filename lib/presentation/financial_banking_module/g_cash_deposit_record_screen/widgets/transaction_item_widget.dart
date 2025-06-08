import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transactionItemModel;

  TransactionItemWidget({
    Key? key,
    required this.transactionItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
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
                transactionItemModel.method?.value ?? '',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFABB6, height: 1.2),
              ),
              SizedBox(height: 4.h),
              Text(
                transactionItemModel.datetime?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFFABB6, height: 1.2),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transactionItemModel.amount?.value ?? '',
                style:
                    TextStyleHelper.instance.title16Bold.copyWith(height: 1.2),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.h,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: transactionItemModel.statusColor?.value ??
                          appTheme.greyCustom,
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                  ),
                  SizedBox(width: 2.h),
                  Text(
                    transactionItemModel.status?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFABB6, height: 1.2),
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
