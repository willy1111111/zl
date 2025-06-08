import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_edit_text.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_display.dart';
import './controller/withdrawal_limit_notification_controller.dart';

class WithdrawalLimitNotificationScreen
    extends GetWidget<WithdrawalLimitNotificationController> {
  WithdrawalLimitNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        showBalance: true,
        balanceAmount: '₱1980.00',
        height: CustomAppBarHeight.standard,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                _buildCardSection(),
                SizedBox(height: 88.h),
                _buildWithdrawalTimeInfo(),
                SizedBox(height: 8.h),
                _buildWithdrawalInfoSection(),
                SizedBox(height: 14.h),
                _buildInfoCard(),
                SizedBox(height: 24.h),
                _buildWithdrawalAvailable(),
                SizedBox(height: 13.h),
                _buildAmountInput(),
                SizedBox(height: 20.h),
                _buildTransactionPassword(),
                SizedBox(height: 36.h),
                _buildSubmitButton(),
                SizedBox(height: 24.h),
                _buildWithdrawalRecord(),
                SizedBox(height: 20.h),
                _buildDecorativeElements(),
              ],
            ),
          ),
          Obx(() {
            return controller.isModalVisible.value
                ? _buildModalOverlay()
                : SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  Widget _buildCardSection() {
    return Container(
      width: 335.h,
      height: 149.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 18.h,
            top: 20.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 17.h,
              width: 18.h,
            ),
          ),
          Positioned(
            left: 44.h,
            top: 19.h,
            child: Text(
              'PIX-MOBILE',
              style: TextStyleHelper.instance.title16BoldMicrosoftYaHei2,
            ),
          ),
          Positioned(
            left: 18.h,
            top: 46.h,
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
            left: 16.h,
            top: 74.h,
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
            left: 16.h,
            top: 118.h,
            child: Text(
              '2023-05-03',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            right: 27.h,
            top: 37.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
              height: 80.h,
              width: 74.h,
            ),
          ),
          Positioned(
            right: 53.h,
            top: 116.h,
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
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalTimeInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Text(
        'Withdrawaltime(GMT+8): 00:00 -00:00',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFF8089),
      ),
    );
  }

  Widget _buildWithdrawalInfoSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'Single Withdrawal: '),
              CustomTextSpan(text: '10 - 999', color: appTheme.colorFF85D4),
            ],
            fontSize: 12,
            defaultColor: appTheme.colorFF8089,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray400,
            height: 16.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      width: 349.h,
      height: 86.h,
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'Total redemption value：'),
              CustomTextSpan(text: '₱ 135', color: appTheme.colorFFFFC6),
            ],
            fontSize: 14,
            defaultColor: appTheme.whiteCustom,
          ),
          SizedBox(height: 10.h),
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(
                  text:
                      'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，'),
              CustomTextSpan(text: 'Bet Now', color: appTheme.colorFF85D4),
              CustomTextSpan(text: ' →', color: appTheme.colorFF85D4),
            ],
            fontSize: 12,
            defaultColor: appTheme.colorFF8089,
            lineHeight: 1.33,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          Text(
            'Withdrawal Available:₱ 0',
            style: TextStyleHelper.instance.title16BoldArial,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray400,
            height: 16.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      width: 345.h,
      height: 48.h,
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse25,
            height: 18.h,
            width: 18.h,
          ),
          SizedBox(width: 4.h),
          Text(
            '₱',
            style: TextStyleHelper.instance.body13Arial,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Text(
              '6000',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 15.h,
            width: 17.h,
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionPassword() {
    return CustomEditText(
      controller: controller.passwordController,
      placeholder: 'Transaction Password',
      leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
      width: 345.h,
      margin: EdgeInsets.symmetric(horizontal: 15.h),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomButton(
        text: 'Submit',
        variant: CustomButtonVariant.gradient,
        width: 322.h,
        onPressed: () {
          controller.onSubmitPressed();
        },
      ),
    );
  }

  Widget _buildWithdrawalRecord() {
    return GestureDetector(
      onTap: () {
        controller.onWithdrawalRecordPressed();
      },
      child: Container(
        width: 345.h,
        height: 44.h,
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Withdrawal record',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1WhiteA700,
              height: 15.h,
              width: 14.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecorativeElements() {
    return Stack(
      children: [
        Positioned(
          right: 77.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup668,
            height: 50.h,
            width: 50.h,
          ),
        ),
        Positioned(
          left: 172.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup821,
            height: 5.h,
            width: 32.h,
          ),
        ),
      ],
    );
  }

  Widget _buildModalOverlay() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 485.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.h),
              topRight: Radius.circular(16.h),
            ),
            border: Border.all(color: appTheme.colorF92C35),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildModalHeader(),
              _buildNextStageInfo(),
              _buildProgressSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              GestureDetector(
                onTap: () {
                  controller.closeModal();
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 14.h,
                  width: 14.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup11929,
            height: 30.h,
            width: 30.h,
          ),
          SizedBox(height: 16.h),
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'The '),
              CustomTextSpan(
                  text: 'Withdrawal limit will be increased soon',
                  color: appTheme.colorFF85D4),
            ],
            fontSize: 16,
            defaultColor: appTheme.whiteCustom,
            lineHeight: 1.125,
          ),
        ],
      ),
    );
  }

  Widget _buildNextStageInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next Stage :',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 8.h),
          Text(
            'Complete Required Bet : -',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 4.h),
          Text(
            'Withdrawal Limit : -',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1071,
            height: 136.h,
            width: 345.h,
          ),
          SizedBox(height: 16.h),
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'Complete The Remaining Required Bets:'),
              CustomTextSpan(text: ' -', color: appTheme.colorFFF0E7),
            ],
            fontSize: 14,
            defaultColor: appTheme.whiteCustom,
            lineHeight: 1.43,
          ),
          SizedBox(height: 16.h),
          _buildProgressBar(),
          SizedBox(height: 16.h),
          Text(
            '79% Completed',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 16.h),
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'Withdraw Total Redemption Value:'),
              CustomTextSpan(text: ' -', color: appTheme.colorFFF0E7),
            ],
            fontSize: 14,
            defaultColor: appTheme.whiteCustom,
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Stack(
      children: [
        Container(
          width: 309.h,
          height: 8.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF3451,
            borderRadius: BorderRadius.circular(4.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
        Container(
          width: 270.h,
          height: 8.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF85D420), Color(0xFF8EFD00)],
            ),
            borderRadius: BorderRadius.circular(4.h),
          ),
        ),
        Positioned(
          left: 256.h,
          top: -3.h,
          child: Container(
            width: 14.h,
            height: 14.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFA0FF,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFFE5FF,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
