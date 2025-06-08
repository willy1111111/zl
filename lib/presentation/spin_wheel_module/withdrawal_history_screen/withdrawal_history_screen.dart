import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/withdrawal_history_controller.dart';
import './widgets/withdrawal_transaction_item.dart';

class WithdrawalHistoryScreen extends GetWidget<WithdrawalHistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Withdrawal History',
        hasBackButton: true,
        backgroundColor: appTheme.colorFF1B1C,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCrownSection(),
            _buildTableHeaders(),
            _buildTransactionList(),
            _buildPrizeNotification(),
          ],
        ),
      ),
    );
  }

  Widget _buildCrownSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDownload37x20,
                height: 37.h,
                width: 20.h,
                margin: EdgeInsets.only(right: 8.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCrown6b7cb3fe1,
                height: 48.h,
                width: 87.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDownload1,
                height: 37.h,
                width: 20.h,
                margin: EdgeInsets.only(left: 8.h),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'Withdrawal Bonus',
            style: TextStyleHelper.instance.body14Black.copyWith(height: 1.43),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeaders() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          SizedBox(
            width: 112.h,
            child: Text(
              'time',
              style:
                  TextStyleHelper.instance.body12Black.copyWith(height: 1.42),
            ),
          ),
          SizedBox(
            width: 118.h,
            child: Text(
              'Withdraw Amount',
              textAlign: TextAlign.center,
              style:
                  TextStyleHelper.instance.body12Black.copyWith(height: 1.42),
            ),
          ),
          Expanded(
            child: Text(
              'State',
              textAlign: TextAlign.right,
              style:
                  TextStyleHelper.instance.body12Black.copyWith(height: 1.42),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionList() {
    return Obx(() => ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.transactions.length,
          itemBuilder: (context, index) {
            return WithdrawalTransactionItem(
              transaction: controller.transactions[index],
            );
          },
        ));
  }

  Widget _buildPrizeNotification() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.h, 32.h, 20.h, 20.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 66.h,
            width: 262.h,
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              alignment: Alignment.center,
              child: Text(
                'You have won a Top Prize, you can contact customer service to collect the prize',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Regular
                    .copyWith(color: appTheme.whiteCustom, height: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
