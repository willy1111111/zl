import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/notice_empty_state_controller.dart';

class NoticeEmptyStateScreen extends GetWidget<NoticeEmptyStateController> {
  const NoticeEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          appBarType: CustomAppBarType.navigation,
          height: 86.h,
          backgroundColor: appTheme.colorFF1B1C,
          title: 'Notice',
          titleColor: appTheme.whiteCustom,
          showStatusBar: true,
          statusBarImage: ImageConstant.img1Black900,
          showBackButton: true,
          onBackTap: () {
            Get.back();
          },
        ),
      ),
      body: _buildContentArea(),
    );
  }

  Widget _buildContentArea() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEmptyStateIllustration(),
          SizedBox(height: 16.h),
          _buildNoDataText(),
        ],
      ),
    );
  }

  Widget _buildEmptyStateIllustration() {
    return CustomImageView(
      imagePath: ImageConstant.imgGroup278,
      height: 184.h,
      width: 240.h,
      fit: BoxFit.contain,
    );
  }

  Widget _buildNoDataText() {
    return Text(
      'No data',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089),
    );
  }
}
