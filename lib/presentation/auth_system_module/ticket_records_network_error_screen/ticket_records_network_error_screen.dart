import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/ticket_records_network_error_controller.dart';

class TicketRecordsNetworkErrorScreen
    extends GetWidget<TicketRecordsNetworkErrorController> {
  const TicketRecordsNetworkErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 44.h),
            _buildErrorIllustration(),
            SizedBox(height: 71.h),
            _buildErrorMessage(),
            SizedBox(height: 23.h),
            _buildReloadButton(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 78.h,
      backgroundColor: appTheme.colorFF1B1C,
      showBackButton: true,
      backButtonIcon: ImageConstant.imgStroke,
      title: 'Ticket Records',
      showStatusBar: true,
      statusBarPath: ImageConstant.img1,
      showShadow: true,
      onBackPressed: () {
        controller.onBackPressed();
      },
    );
  }

  Widget _buildErrorIllustration() {
    return Center(
      child: CustomImageView(
        imagePath: ImageConstant
            .imgF0f002d24efce8d8c376cc360fa9e7a4185df7e84cfcmrt8nq1,
        height: 184.h,
        width: 240.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildErrorMessage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: Text(
        controller.ticketRecordsNetworkErrorModel.value?.errorMessage?.value ??
            'The network is not working, please refresh or try again',
        textAlign: TextAlign.center,
        style: TextStyleHelper.instance.body14BoldArial
            .copyWith(color: appTheme.colorFF8089, height: 1.43),
      ),
    );
  }

  Widget _buildReloadButton() {
    return Center(
      child: Obx(() => GestureDetector(
            onTap: () {
              controller.onReloadPressed();
            },
            child: Opacity(
              opacity: controller.isLoading.value ? 0.7 : 1.0,
              child: Container(
                width: 120.h,
                height: 44.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF76CD00),
                      appTheme.colorFF478A,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: Center(
                  child: Text(
                    controller.isLoading.value ? 'Loading...' : 'Reload',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(height: 1.21),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
