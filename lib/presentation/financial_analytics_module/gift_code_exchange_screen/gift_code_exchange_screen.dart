import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/gift_code_exchange_controller.dart';

class GiftCodeExchangeScreen extends StatelessWidget {
  const GiftCodeExchangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<GiftCodeExchangeController>();

    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: SizedBox(
          width: 375.h,
          height: 812.h,
          child: Stack(
            children: [
              // State 1: Initial Input State
              Positioned(
                left: 18.h,
                top: 77.h,
                child: Text(
                  '01 未输入-按钮状态',
                  style: TextStyleHelper.instance.title18Bold
                      .copyWith(height: 1.17),
                ),
              ),

              // Gift Code Icon 1
              Positioned(
                left: 24.h,
                top: 131.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img235,
                  width: 36.h,
                  height: 36.h,
                ),
              ),

              // Gift Code Label 1
              Positioned(
                left: 18.h,
                top: 151.h,
                child: Text(
                  'Gift Code',
                  style: TextStyleHelper.instance.body13Bold
                      .copyWith(height: 1.15),
                ),
              ),

              // Input Field 1
              Positioned(
                left: 70.h,
                top: 129.h,
                child: Container(
                  width: 194.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF1B1C,
                    border: Border.all(color: appTheme.colorFF282F),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: TextFormField(
                      controller: controller.firstInputController,
                      style: TextStyleHelper.instance.body14Bold,
                      decoration: InputDecoration(
                        hintText: 'Enter the gift code',
                        hintStyle: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFF8089),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
              ),

              // Exchange Button 1 (Disabled)
              Positioned(
                left: 272.h,
                top: 132.h,
                child: GestureDetector(
                  onTap: () => controller.onFirstExchangePressed(),
                  child: Container(
                    width: 78.h,
                    height: 34.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      ),
                      borderRadius: BorderRadius.circular(17.h),
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ),

              // State 2: Input Filled State
              Positioned(
                left: 18.h,
                top: 232.h,
                child: Text(
                  '02 输入-按钮状态',
                  style: TextStyleHelper.instance.title18Bold
                      .copyWith(height: 1.17),
                ),
              ),

              // Gift Code Icon 2
              Positioned(
                left: 24.h,
                top: 279.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img235,
                  width: 36.h,
                  height: 36.h,
                ),
              ),

              // Gift Code Label 2
              Positioned(
                left: 18.h,
                top: 299.h,
                child: Text(
                  'Gift Code',
                  style: TextStyleHelper.instance.body13Bold
                      .copyWith(height: 1.15),
                ),
              ),

              // Input Field 2 (Filled)
              Positioned(
                left: 70.h,
                top: 277.h,
                child: Container(
                  width: 194.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF1B1C,
                    border: Border.all(color: appTheme.colorFF282F),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: TextFormField(
                      controller: controller.secondInputController,
                      style: TextStyleHelper.instance.body14Bold,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
              ),

              // Exchange Button 2 (Active)
              Positioned(
                left: 272.h,
                top: 280.h,
                child: GestureDetector(
                  onTap: () => controller.onSecondExchangePressed(),
                  child: Container(
                    width: 78.h,
                    height: 34.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                      ),
                      borderRadius: BorderRadius.circular(17.h),
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ),

              // State 3: Verification Code Expired
              Positioned(
                left: 18.h,
                top: 361.h,
                child: Text(
                  '03 验证码过期提示',
                  style: TextStyleHelper.instance.title18Bold
                      .copyWith(height: 1.17),
                ),
              ),

              // Error Message Dialog
              Positioned(
                left: 59.h,
                top: 429.h,
                child: Container(
                  width: 258.h,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF8089,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.h),
                  child: Center(
                    child: Text(
                      'The redemption code has expired',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(height: 1.22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              // Send Button
              Positioned(
                left: 263.h,
                top: 532.h,
                child: GestureDetector(
                  onTap: () => controller.onSendPressed(),
                  child: Container(
                    width: 77.h,
                    height: 34.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFABB6CA), Color(0xFF484E59)],
                      ),
                      border: Border.all(color: appTheme.colorFF6A73),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: Text(
                        'send',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
