import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_edit_text.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_display.dart';
import './controller/pix_mobile_wallet_withdrawal_controller.dart';

class PixMobileWalletWithdrawalScreen
    extends GetWidget<PixMobileWalletWithdrawalController> {
  const PixMobileWalletWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            _buildPixMobileCard(),
            SizedBox(height: 16.h),
            _buildPageIndicator(),
            SizedBox(height: 20.h),
            _buildWithdrawalTimeSection(),
            SizedBox(height: 8.h),
            _buildSingleWithdrawalSection(),
            SizedBox(height: 16.h),
            _buildTotalRedemptionSection(),
            SizedBox(height: 16.h),
            _buildWithdrawalAvailableSection(),
            SizedBox(height: 16.h),
            _buildAmountInput(),
            SizedBox(height: 16.h),
            _buildTransactionPasswordInput(),
            SizedBox(height: 16.h),
            _buildSubmitButton(),
            SizedBox(height: 16.h),
            _buildWithdrawalRecordButton(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      floatingActionButton: _buildAddButton(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Wallet',
      showBalance: true,
      balanceAmount: '₱1980.00',
      height: CustomAppBarHeight.standard,
      onBackPressed: () {
        Get.back();
      },
    );
  }

  Widget _buildPixMobileCard() {
    return Container(
      width: 335.h,
      height: 149.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF33C38F),
            appTheme.colorFF3352,
          ],
          stops: [0.0, 1.0],
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
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.colorFFFFC6, height: 1.375),
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
              style: TextStyleHelper.instance.headline24Black
                  .copyWith(height: 1.417, shadows: [
                Shadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 1),
                  blurRadius: 2,
                ),
              ]),
            ),
          ),
          Positioned(
            top: 118.h,
            left: 16.h,
            child: Text(
              '2023-05-03',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.167),
            ),
          ),
          Positioned(
            top: 37.h,
            right: 27.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
              height: 80.h,
              width: 74.h,
            ),
          ),
          Positioned(
            top: 116.h,
            right: 13.h,
            child: Container(
              width: 88.h,
              height: 9.h,
              decoration: BoxDecoration(
                color: appTheme.color7F3F3F,
                borderRadius: BorderRadius.circular(4.h),
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
        imagePath: ImageConstant.imgGroup821BlueGray700,
        height: 5.h,
        width: 32.h,
      ),
    );
  }

  Widget _buildAddButton() {
    return Positioned(
      top: 271.h,
      right: 27.h,
      child: GestureDetector(
        onTap: () {
          controller.onAddButtonPressed();
        },
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup1137,
          height: 50.h,
          width: 50.h,
        ),
      ),
    );
  }

  Widget _buildWithdrawalTimeSection() {
    return Text(
      'Withdrawaltime(GMT+8): 00:00 -00:00',
      style: TextStyleHelper.instance.body12Bold
          .copyWith(color: appTheme.colorFF8089, height: 1.167),
    );
  }

  Widget _buildSingleWithdrawalSection() {
    return Row(
      children: [
        Expanded(
          child: CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(
                text: 'Single Withdrawal: ',
                color: appTheme.colorFF8089,
              ),
              CustomTextSpan(
                text: '10 - 999',
                color: appTheme.colorFF85D4,
              ),
            ],
            fontSize: 12,
            defaultColor: appTheme.colorFF8089,
          ),
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.img1BlueGray400,
          height: 16.h,
          width: 16.h,
        ),
      ],
    );
  }

  Widget _buildTotalRedemptionSection() {
    return Container(
      width: 345.h,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.colorFF2B2B,
          width: 1.h,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(
                text: 'Total redemption value: ',
                color: appTheme.whiteCustom,
              ),
              CustomTextSpan(
                text: '₱ 135',
                color: appTheme.colorFFFFC6,
              ),
            ],
            fontSize: 14,
            defaultColor: appTheme.whiteCustom,
            margin: 7,
          ),
          SizedBox(height: 7.h),
          RichText(
            text: TextSpan(
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.333),
              children: [
                TextSpan(
                    text: 'Complete the remaining required bets：135,999.19\n'),
                TextSpan(text: 'To increase your Withdrawal Available，'),
                TextSpan(
                  text: ' Bet Now→',
                  style: TextStyleHelper.instance.textStyle15.copyWith(
                      color: appTheme.colorFF51A0,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailableSection() {
    return Row(
      children: [
        Expanded(
          child: CustomRichTextDisplay(
            textSpans: [
              CustomTextSpan(
                text: 'Withdrawal Available: ',
                color: appTheme.whiteCustom,
              ),
              CustomTextSpan(
                text: '₱ 0',
                color: appTheme.colorFFFFC6,
              ),
            ],
            fontSize: 16,
            defaultColor: appTheme.whiteCustom,
          ),
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.img1BlueGray400,
          height: 16.h,
          width: 16.h,
        ),
      ],
    );
  }

  Widget _buildAmountInput() {
    return Container(
      width: 345.h,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          Container(
            width: 18.h,
            height: 18.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: 18.h,
                ),
                Positioned(
                  left: 5.h,
                  child: Text(
                    '₱',
                    style:
                        TextStyleHelper.instance.body13.copyWith(height: 1.154),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.h),
          Obx(
            () => Text(
              controller.pixMobileWalletWithdrawalModel.value?.amount?.value ??
                  '999',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.214),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              controller.onEditAmountPressed();
            },
            child: CustomImageView(
              imagePath: ImageConstant.img7,
              height: 15.h,
              width: 17.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionPasswordInput() {
    return CustomEditText(
      controller: controller.transactionPasswordController,
      placeholder: 'Transaction Password',
      width: 345.h,
      isPassword: true,
    );
  }

  Widget _buildSubmitButton() {
    return Center(
      child: CustomButton(
        text: 'Submit',
        width: 322.h,
        height: 50.h,
        variant: CustomButtonVariant.gradient,
        onPressed: () {
          controller.onSubmitPressed();
        },
      ),
    );
  }

  Widget _buildWithdrawalRecordButton() {
    return GestureDetector(
      onTap: () {
        controller.onWithdrawalRecordPressed();
      },
      child: Container(
        width: 345.h,
        height: 44.h,
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Withdrawal record',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4, height: 1.214),
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
}
