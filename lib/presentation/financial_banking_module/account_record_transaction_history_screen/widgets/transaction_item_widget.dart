import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
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
      color: appTheme.colorFF1E20,
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: transactionItemModel.icon?.value ?? '',
                height: 18.h,
                width: 15.h,
              ),
              SizedBox(width: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactionItemModel.transactionType?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    transactionItemModel.dateTime?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transactionItemModel.amount?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial.copyWith(
                        color: transactionItemModel.amountColor?.value ??
                            Color(0xFF478A03)),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    transactionItemModel.balance?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
              SizedBox(width: 12.h),
              Container(
                height: 18.h,
                width: 18.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: transactionItemModel.currencyIcon?.value ?? '',
                      height: 18.h,
                      width: 18.h,
                    ),
                    Positioned(
                      top: 0,
                      left: 5.h,
                      child: Text(
                        transactionItemModel.currencySymbol?.value ?? '',
                        style: TextStyleHelper.instance.body13Arial,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
