import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/account_card_model.dart';

class AccountCardWidget extends StatelessWidget {
  final AccountCardModel accountData;

  AccountCardWidget({
    Key? key,
    required this.accountData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
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
      child: Column(
        children: [
          _buildAccountInfoRow('Account:', accountData.account?.value ?? ''),
          _buildDivider(),
          _buildAccountInfoRow('Type:', accountData.type?.value ?? ''),
          _buildDivider(),
          _buildAccountInfoRow('PixType:', accountData.pixType?.value ?? ''),
          _buildDivider(),
          _buildAccountInfoRow('Name:', accountData.name?.value ?? ''),
          _buildDivider(),
          _buildAccountInfoRow('Remark:', accountData.remark?.value ?? ''),
        ],
      ),
    );
  }

  Widget _buildAccountInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF4B55),
          ),
          Flexible(
            child: Text(
              value,
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.maxFinite,
      height: 1.h,
      color: appTheme.colorFF282F,
    );
  }
}
