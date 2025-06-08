import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/withdrawal_history_empty_controller.dart';

class WithdrawalHistoryEmptyScreen
    extends GetWidget<WithdrawalHistoryEmptyController> {
  const WithdrawalHistoryEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: appTheme.colorFF1B1C,
      elevation: 2,
      shadowColor: appTheme.blackCustom,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.h, top: 6.h, bottom: 6.h),
        child: GestureDetector(
          onTap: () => Get.back(),
          child: CustomImageView(
            imagePath: ImageConstant.imgStroke,
            height: 13.h,
            width: 7.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Text(
          'Withdrawal History',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
      ),
      titleSpacing: 0,
      centerTitle: false,
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup278,
            height: 184.h,
            width: 240.h,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 5.h),
          Text(
            'Oops! There is no data yet!',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
