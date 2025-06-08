import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_display.dart';
import './controller/wallet_withdrawal_requirements_controller.dart';

class WalletWithdrawalRequirementsScreen
    extends GetWidget<WalletWithdrawalRequirementsController> {
  WalletWithdrawalRequirementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildMainContent(),
          Obx(() => Visibility(
                visible: controller.isModalVisible.value,
                child: _buildModalOverlay(),
              )),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Wallet',
      height: CustomAppBarHeight.standard,
      showBalance: true,
      balanceAmount: '₱1980.00',
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 22.h),
          child: CustomImageView(
            imagePath: ImageConstant.img1LightGreenA700,
            height: 14.h,
            width: 16.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          _buildGradientCard(),
          SizedBox(height: 9.h),
          _buildPageIndicator(),
          SizedBox(height: 39.h),
          _buildWithdrawalInfo(),
          SizedBox(height: 24.h),
          _buildWalletAmounts(),
          SizedBox(height: 39.h),
          _buildWithdrawalRequirements(),
          SizedBox(height: 24.h),
          _buildRequirementsTable(),
          SizedBox(height: 24.h),
          _buildWithdrawalRecordButton(),
          SizedBox(height: 108.h),
        ],
      ),
    );
  }

  Widget _buildGradientCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      height: 149.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.139, -0.990),
          end: Alignment(0.861, 0.990),
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            left: 18.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 17.h,
              width: 18.h,
            ),
          ),
          Positioned(
            top: 19.h,
            left: 44.h,
            child: Text(
              'PIX-MOBILE',
              style: TextStyleHelper.instance.title16BoldMicrosoftYaHei2,
            ),
          ),
          Positioned(
            top: 46.h,
            left: 18.h,
            child: Container(
              width: 144.h,
              height: 1.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFC700), Color(0xFFFFC700)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 74.h,
            left: 16.h,
            child: Text(
              '******8927',
              style: TextStyleHelper.instance.headline24BlackArial
                  .copyWith(shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  blurRadius: 2,
                  color: appTheme.blackCustom,
                ),
              ]),
            ),
          ),
          Positioned(
            top: 118.h,
            left: 16.h,
            child: Text(
              '2023-05-03',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 37.h,
            right: 67.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
              height: 80.h,
              width: 74.h,
            ),
          ),
          Positioned(
            bottom: 24.h,
            right: 13.h,
            child: Container(
              width: 88.h,
              height: 9.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x7F3F3F3F), Color(0x7F3F3F3F)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    offset: Offset(0, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Center(
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup821,
        height: 5.h,
        width: 32.h,
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Padding(
      padding: EdgeInsets.only(top: 185.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup668,
        height: 50.h,
        width: 50.h,
        onTap: () {
          controller.onFabTap();
        },
      ),
    );
  }

  Widget _buildWithdrawalInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Withdrawaltime(GMT+8): 00:00 -00:00',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              CustomRichTextDisplay(
                textSpans: [
                  CustomTextSpan(text: 'Single Withdrawal: '),
                  CustomTextSpan(
                    text: '10 - 999',
                    color: appTheme.colorFF85D4,
                  ),
                ],
                fontSize: 12,
                defaultColor: appTheme.colorFF8089,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.img1BlueGray400,
                height: 16.h,
                width: 16.h,
                onTap: () {
                  controller.showInfoModal();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWalletAmounts() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'Main wallet : '),
              CustomTextSpan(
                text: '₱ 100.00',
                color: appTheme.colorFFFFA9,
              ),
            ],
            fontSize: 12,
            defaultColor: appTheme.colorFF8089,
          ),
          SizedBox(height: 6.h),
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'WithdrawAmount : '),
              CustomTextSpan(
                text: '₱ 120.00',
                color: appTheme.colorFFFFA9,
              ),
            ],
            fontSize: 12,
            defaultColor: appTheme.colorFF8089,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalRequirements() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Withdrawal turnover requirements',
            style: TextStyleHelper.instance.title16BoldArial,
          ),
          SizedBox(height: 12.h),
          Text(
            'Please complete the required turnover for withdrawal.',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFFE33F),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementsTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 113.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup572,
            height: 113.h,
            width: 345.h,
          ),
          Positioned(
            top: 9.h,
            left: 55.h,
            child: Text(
              'Game type',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 9.h,
            left: 219.h,
            child: Text(
              'Require Bet',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 47.h,
            left: 79.h,
            child: Text(
              'slot',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Positioned(
            top: 47.h,
            left: 248.h,
            child: Text(
              '111',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Positioned(
            top: 84.h,
            left: 79.h,
            child: Text(
              'slot',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Positioned(
            top: 84.h,
            left: 247.h,
            child: Text(
              '110',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalRecordButton() {
    return GestureDetector(
      onTap: () {
        controller.navigateToWithdrawalRecord();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        height: 44.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Withdrawal record',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF85D4),
              ),
              CustomImageView(
                imagePath: ImageConstant.img1BlueGray40022x20,
                height: 22.h,
                width: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalOverlay() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              controller.hideModal();
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: appTheme.transparentCustom,
            ),
          ),
          Positioned(
            top: 511.h,
            right: 16.h,
            child: GestureDetector(
              onTap: () {
                controller.hideModal();
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup848,
                height: 32.h,
                width: 32.h,
              ),
            ),
          ),
          _buildBottomSheet(),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 255.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.h),
            topRight: Radius.circular(12.h),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 18.h),
            Text(
              'Title/标题',
              style:
                  TextStyleHelper.instance.title16BoldArial.copyWith(shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 2,
                  color: appTheme.blackCustom,
                ),
              ]),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                'Upgrading your VIP level canincrease your single withdrawallimit',
                style: TextStyleHelper.instance.body15Arial,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
