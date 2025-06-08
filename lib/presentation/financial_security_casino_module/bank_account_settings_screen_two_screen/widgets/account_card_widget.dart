import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bank_account_model.dart';

class AccountCardWidget extends StatelessWidget {
  final BankAccountModel accountModel;
  final VoidCallback? onEditPressed;

  AccountCardWidget({
    Key? key,
    required this.accountModel,
    this.onEditPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildAccountRow(),
          _buildDivider(),
          _buildTypeRow(),
          _buildDivider(),
          _buildPixTypeRow(),
          _buildDivider(),
          _buildNameRow(),
          _buildDivider(),
          _buildRemarkRow(),
        ],
      ),
    );
  }

  Widget _buildAccountRow() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Account:',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF4B55),
              ),
              SizedBox(width: 8.h),
              Text(
                accountModel.account?.value ?? '',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
          GestureDetector(
            onTap: onEditPressed,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame611,
              height: 22.h,
              width: 22.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeRow() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(
            'Type:',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF4B55),
          ),
          SizedBox(width: 8.h),
          Text(
            accountModel.type?.value ?? '',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildPixTypeRow() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(
            'PixType:',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF4B55),
          ),
          SizedBox(width: 8.h),
          Text(
            accountModel.pixType?.value ?? '',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildNameRow() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(
            'Name:',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF4B55),
          ),
          SizedBox(width: 8.h),
          Text(
            accountModel.name?.value ?? '',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildRemarkRow() {
    return Row(
      children: [
        Text(
          'Remark:',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF4B55),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1.h,
      color: appTheme.colorFF282F,
      margin: EdgeInsets.only(bottom: 16.h),
    );
  }
}
