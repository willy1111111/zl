import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/gaming_bonus_dashboard_controller.dart';
import '../models/deposit_bonus_item_model.dart';

class DepositBonusCardWidget extends StatelessWidget {
  final DepositBonusItemModel? depositBonusModel;

  DepositBonusCardWidget({
    Key? key,
    this.depositBonusModel,
  }) : super(key: key);

  var controller = Get.find<GamingBonusDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          // Header
          Row(
            children: [
              CustomImageView(
                imagePath: depositBonusModel?.iconPath?.value ??
                    ImageConstant.imgFrame6,
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Text(
                  depositBonusModel?.title?.value ?? 'Deposit Bonus',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFFFFFF, height: 1.19),
                ),
              ),
              Text(
                'Total: ${depositBonusModel?.totalAmount?.value ?? '₱399.80'}',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.21),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          // Divider
          Container(
            width: double.infinity,
            height: 1.h,
            color: appTheme.colorFF282F,
          ),

          SizedBox(height: 16.h),

          // First Deposit Highlight
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(12.h),
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'First Deposit',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFFF, height: 1.21),
                ),
                Text(
                  depositBonusModel?.firstDepositPercentage?.value ?? '30%',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                ),
              ],
            ),
          ),

          // Other Deposits
          Column(
            children: [
              _buildDepositRow(
                'Second Deposit',
                depositBonusModel?.secondDepositPercentage?.value ?? '30%',
              ),
              SizedBox(height: 12.h),
              _buildDepositRow(
                'First Daily Deposit',
                depositBonusModel?.firstDailyDepositPercentage?.value ?? '30%',
              ),
              SizedBox(height: 12.h),
              _buildDepositRow(
                'Fixed Payment Method Deposit',
                depositBonusModel?.fixedPaymentMethodPercentage?.value ?? '30%',
              ),
            ],
          ),

          SizedBox(height: 16.h),

          // Action Button
          GestureDetector(
            onTap: () => controller.onDepositBonusPressed(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: appTheme.colorFF2B32,
                borderRadius: BorderRadius.circular(18.h),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Center(
                child: Text(
                  depositBonusModel?.actionText?.value ?? 'First Deposit',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositRow(String label, String percentage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.21),
        ),
        Text(
          percentage,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.21),
        ),
      ],
    );
  }
}
