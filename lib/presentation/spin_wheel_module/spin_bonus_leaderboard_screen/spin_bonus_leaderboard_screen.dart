import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_bonus_leaderboard_controller.dart';
import './widgets/winner_item_widget.dart';

class SpinBonusLeaderboardScreen
    extends GetWidget<SpinBonusLeaderboardController> {
  const SpinBonusLeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Spin Bonus',
        hasBackButton: true,
        backButtonIcon: ImageConstant.imgStroke,
        backgroundColor: appTheme.colorFF1B1C,
      ),
      body: Column(
        children: [
          _buildHeaderSection(),
          _buildTableHeaders(),
          Expanded(
            child: _buildWinnersList(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
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
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgCrown6b7cb3fe1,
                height: 48.h,
                width: 87.h,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgDownload1,
                height: 37.h,
                width: 20.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Spin Bonus',
            style: TextStyleHelper.instance.body14Black,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 73.h,
            child: Text(
              'user name',
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          SizedBox(
            width: 68.h,
            child: Text(
              'spin level',
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          SizedBox(
            width: 33.h,
            child: Text(
              'prize',
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWinnersList() {
    return Obx(() => ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          itemCount: controller.winnersList.length,
          itemBuilder: (context, index) {
            return WinnerItemWidget(
              winnerModel: controller.winnersList[index],
            );
          },
        ));
  }
}
