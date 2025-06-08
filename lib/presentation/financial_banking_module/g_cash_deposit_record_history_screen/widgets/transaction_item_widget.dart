import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionItemModel transaction;
  final VoidCallback? onTap;

  TransactionItemWidget({
    Key? key,
    required this.transaction,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: appTheme.colorFF282F,
              width: 1.h,
            ),
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.method?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF8089, height: 1.2),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      transaction.dateTime?.value ?? '',
                      style: TextStyleHelper.instance.body13Bold
                          .copyWith(color: appTheme.colorFF4B55, height: 1.2),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      transaction.amount?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.2),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 6.h,
                          height: 6.h,
                          decoration: BoxDecoration(
                            color: transaction.statusColor?.value ??
                                appTheme.greyCustom,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 4.h),
                        Text(
                          transaction.status?.value ?? '',
                          style: TextStyleHelper.instance.title16Bold.copyWith(
                              color: (transaction.status?.value == 'Rejected')
                                  ? Color(0xFFABB6CA)
                                  : appTheme.colorFF8089,
                              fontSize:
                                  (transaction.status?.value == 'Rejected')
                                      ? 14.0
                                      : 16.0,
                              height:
                                  1.2), // Modified: Fixed fontSize parameter to accept double instead of bool
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 13.h,
              right: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgStrokeBlueGray700,
                width: 7.h,
                height: 13.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
