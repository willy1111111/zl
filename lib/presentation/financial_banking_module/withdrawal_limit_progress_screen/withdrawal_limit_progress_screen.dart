import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_display.dart';
import './controller/withdrawal_limit_progress_controller.dart';

class WithdrawalLimitProgressScreen
    extends GetWidget<WithdrawalLimitProgressController> {
  WithdrawalLimitProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: _buildMainContent(),
              ),
            ],
          ),
          _buildCenterDecorations(),
          Obx(() => controller.isModalVisible.value
              ? _buildWithdrawalProgressModal()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomAppBar(
      title: 'Wallet',
      showBalance: true,
      balanceAmount: '₱1980.00',
      height: CustomAppBarHeight.standard,
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          _buildPixCard(),
          SizedBox(height: 16.h),
          _buildWithdrawalInfo(),
          SizedBox(height: 8.h),
          _buildWithdrawalTime(),
          SizedBox(height: 8.h),
          _buildWithdrawalAvailable(),
          SizedBox(height: 16.h),
          _buildAmountInput(),
          SizedBox(height: 16.h),
          _buildTransactionPasswordField(),
          SizedBox(height: 16.h),
          _buildSubmitButton(),
          SizedBox(height: 16.h),
          _buildWithdrawalRecord(),
        ],
      ),
    );
  }

  Widget _buildPixCard() {
    return Container(
      height: 149.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.139, -1),
          end: Alignment(0.139, 1),
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
            top: 116.h,
            right: 67.h,
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

  Widget _buildWithdrawalInfo() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomRichTextDisplay(
              textSpans: [
                CustomTextSpan(text: 'Single Withdrawal: '),
                CustomTextSpan(text: '10 - 999', color: appTheme.colorFF85D4),
              ],
              fontSize: 12,
              defaultColor: appTheme.colorFF8089,
            ),
            CustomImageView(
              imagePath: ImageConstant.img1BlueGray400,
              height: 16.h,
              width: 16.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Container(
          padding: EdgeInsets.all(10.h),
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
              SizedBox(height: 8.h),
              CustomRichTextDisplay(
                textSpans: [
                  CustomTextSpan(
                      text:
                          'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，'),
                  CustomTextSpan(text: 'Bet Now→', color: appTheme.colorFF85D4),
                ],
                fontSize: 12,
                defaultColor: appTheme.colorFF8089,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWithdrawalTime() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Withdrawaltime(GMT+8): 00:00 -00:00',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFF8089),
      ),
    );
  }

  Widget _buildWithdrawalAvailable() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Withdrawal Available:₱ 0',
        style: TextStyleHelper.instance.title16BoldArial,
      ),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse25,
                      height: 18.h,
                      width: 18.h,
                    ),
                    Positioned(
                      top: 1.h,
                      left: 5.h,
                      child: Text(
                        '₱',
                        style: TextStyleHelper.instance.body13Arial,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.h),
                Text(
                  '6000',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.h,
            top: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.img7,
              height: 15.h,
              width: 17.h,
            ),
          ),
          Positioned(
            right: 16.h,
            top: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1BlueGray400,
              height: 16.h,
              width: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionPasswordField() {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Transaction Password',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF8089),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: () => controller.onSubmitPressed(),
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE33F3F), Color(0xFFC42D2D)],
          ),
          borderRadius: BorderRadius.circular(25.h),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyleHelper.instance.title16BoldArial,
          ),
        ),
      ),
    );
  }

  Widget _buildWithdrawalRecord() {
    return GestureDetector(
      onTap: () => controller.onWithdrawalRecordTapped(),
      child: Container(
        height: 44.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
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

  Widget _buildCenterDecorations() {
    return Stack(
      children: [
        Positioned(
          top: 260.h,
          left: 172.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup821,
            height: 5.h,
            width: 32.h,
          ),
        ),
        Positioned(
          top: 271.h,
          right: 27.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup668,
            height: 50.h,
            width: 50.h,
          ),
        ),
      ],
    );
  }

  Widget _buildWithdrawalProgressModal() {
    return GestureDetector(
      onTap: () => controller.closeModal(),
      child: Container(
        color: appTheme.blackCustom.withAlpha(128),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 485.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                border: Border.all(color: appTheme.color2C353E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.h),
                  topRight: Radius.circular(16.h),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 11.h,
                    right: 17.h,
                    child: GestureDetector(
                      onTap: () => controller.closeModal(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 14.h,
                        width: 14.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.h, 23.h, 20.h, 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildModalHeader(),
                        SizedBox(height: 16.h),
                        _buildNextStageInfo(),
                        SizedBox(height: 16.h),
                        _buildProgressSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup11929,
          height: 30.h,
          width: 30.h,
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(text: 'The '),
              CustomTextSpan(
                  text: 'Withdrawal limit', color: appTheme.colorFF85D4),
              CustomTextSpan(text: ' will be increased soon'),
            ],
            fontSize: 16,
            defaultColor: appTheme.whiteCustom,
            lineHeight: 1.125,
            margin: 24,
          ),
        ),
      ],
    );
  }

  Widget _buildNextStageInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Next stage：',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        SizedBox(height: 4.h),
        Text(
          'Complete Required bet：200.88',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 4.h),
        Text(
          'Withdrawal limit：₱20',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildProgressSection() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup1071,
          height: 136.h,
          width: double.infinity,
        ),
        SizedBox(height: 16.h),
        CustomRichTextDisplay(
          textSpans: [
            CustomTextSpan(text: 'Complete the remaining required bets:\n'),
            CustomTextSpan(text: ' 1314.19', color: appTheme.colorFFF0E7),
          ],
          fontSize: 14,
          defaultColor: appTheme.whiteCustom,
          lineHeight: 1.43,
        ),
        SizedBox(height: 16.h),
        _buildProgressBar(),
        SizedBox(height: 8.h),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 50.h),
            child: Text(
              '79% completed',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        CustomRichTextDisplay(
          textSpans: [
            CustomTextSpan(text: 'Withdraw total redemption value:'),
            CustomTextSpan(text: ' ₱999.99', color: appTheme.colorFFF0E7),
          ],
          fontSize: 14,
          defaultColor: appTheme.whiteCustom,
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Stack(
      children: [
        Container(
          height: 8.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: appTheme.colorFF3451,
            borderRadius: BorderRadius.circular(4.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 1),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        Container(
          height: 8.h,
          width: 270.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF85D420), Color(0xFF8EFD00)],
            ),
            borderRadius: BorderRadius.circular(4.h),
          ),
        ),
        Positioned(
          top: -3.h,
          left: 289.h,
          child: Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFA0FF,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFFE5FF,
                  offset: Offset(1, 1),
                  blurRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
