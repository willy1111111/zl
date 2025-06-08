import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget({
    Key? key,
    required this.transactionItemModel,
    this.onTap,
  }) : super(key: key);

  TransactionItemModel transactionItemModel;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLeftSection(),
                  _buildRightSection(),
                ],
              ),
            ),
            SizedBox(height: 59.h),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildLeftSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transactionItemModel.paymentMethod?.value ?? '',
          style: TextStyleHelper.instance.body14BoldArial2,
        ),
        SizedBox(height: 1.h),
        Text(
          transactionItemModel.dateTime?.value ?? '',
          style: TextStyleHelper.instance.body13BoldArial
              .copyWith(color: appTheme.colorFF4B55),
        ),
      ],
    );
  }

  Widget _buildRightSection() {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              transactionItemModel.amount?.value ?? '',
              style: TextStyleHelper.instance.body14BoldArial2
                  .copyWith(color: appTheme.whiteCustom),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                    color: transactionItemModel.statusColor?.value ??
                        appTheme.greyCustom,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
                SizedBox(width: 2.h),
                Text(
                  transactionItemModel.status?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial2,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 11.h,
          right: 8.h,
          child: CustomImageView(
            imagePath: transactionItemModel.arrowIcon?.value ?? '',
            height: 13.h,
            width: 7.h,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1.h,
      width: 345.h,
      color: appTheme.colorFF282F,
    );
  }
}
