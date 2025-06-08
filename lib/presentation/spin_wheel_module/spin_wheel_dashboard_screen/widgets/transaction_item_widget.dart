import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transactionItem;

  TransactionItemWidget({
    Key? key,
    required this.transactionItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 8.h,
              height: 8.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFFBBF,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 12.h),
            Text(
              transactionItem.userId?.value ?? '',
              style: TextStyleHelper.instance.body12Medium
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
        Text(
          transactionItem.spinType?.value ?? '',
          style: TextStyleHelper.instance.body12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  'Get:',
                  style: TextStyleHelper.instance.label10,
                ),
                SizedBox(width: 4.h),
                CustomImageView(
                  imagePath: transactionItem.rewardIconPath?.value ?? '',
                  height: 19.h,
                  width: 19.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  transactionItem.rewardAmount?.value ?? '',
                  style: TextStyleHelper.instance.body12Medium,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              transactionItem.timestamp?.value ?? '',
              style: TextStyleHelper.instance.label10,
            ),
          ],
        ),
      ],
    );
  }
}
