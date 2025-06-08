import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/customer_support_suggestion_controller.dart';

class CustomerSupportSuggestionScreen
    extends GetWidget<CustomerSupportSuggestionController> {
  CustomerSupportSuggestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Center(
        child: Container(
          width: 375.h,
          height: 812.h,
          child: Stack(
            children: [
              Positioned(
                left: 31.h,
                top: 150.h,
                child: Container(
                  width: 313.h,
                  height: 391.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3F43,
                    border: Border.all(
                      color: appTheme.colorFF292F,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Stack(
                    children: [
                      _buildModalHeader(),
                      _buildCloseButton(),
                      _buildQuestionTypeLabel(),
                      _buildDropdownContainer(),
                      _buildProblemDescriptionLabel(),
                      _buildTextArea(),
                      _buildActionButtons(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Positioned(
      left: 12.h,
      top: 13.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame12724,
            width: 24.h,
            height: 24.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'Suggestion',
            style: TextStyleHelper.instance.title16Bold.copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      right: 12.h,
      top: 14.h,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: Container(
          width: 20.h,
          height: 20.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            width: 20.h,
            height: 20.h,
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionTypeLabel() {
    return Positioned(
      left: 12.h,
      top: 56.h,
      child: Text(
        'Select question type',
        style: TextStyleHelper.instance.body14
            .copyWith(color: appTheme.whiteCustom, height: 1.2),
      ),
    );
  }

  Widget _buildDropdownContainer() {
    return Positioned(
      left: 12.h,
      top: 85.h,
      child: Container(
        width: 288.h,
        height: 256.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF191A,
          border: Border.all(color: appTheme.colorFF282F),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Column(
          children: [
            _buildDropdownHeader(),
            _buildDropdownOptions(),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownHeader() {
    return Obx(() => GestureDetector(
          onTap: () => controller.toggleDropdown(),
          child: Container(
            width: 289.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              border: Border.all(color: appTheme.colorFF478A),
              borderRadius: BorderRadius.circular(4.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.selectedQuestionType.value.isEmpty ?? true
                      ? 'Please select your question type'
                      : controller.selectedQuestionType.value,
                  style: TextStyleHelper.instance.body14.copyWith(
                      color:
                          controller.selectedQuestionType.value.isEmpty ?? true
                              ? Color(0xFF808994)
                              : appTheme.colorFF85D4,
                      height: 1.2),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgComponent6,
                  width: 20.h,
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildDropdownOptions() {
    return Obx(() => Visibility(
          visible: controller.isDropdownOpen.value,
          child: Positioned(
            top: 48.h,
            left: 0,
            child: Container(
              width: 288.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF191A,
                border: Border.all(color: appTheme.colorFF282F),
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  ...controller.questionTypes
                      .map((option) => _buildDropdownOption(option)),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildDropdownOption(String option) {
    return Obx(() => GestureDetector(
          onTap: () => controller.selectOption(option),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.h),
            decoration: BoxDecoration(
              color: controller.selectedQuestionType.value == option
                  ? Color(0xFF25282D)
                  : appTheme.transparentCustom,
            ),
            child: Text(
              option,
              style: TextStyleHelper.instance.body14.copyWith(
                  color: controller.selectedQuestionType.value == option
                      ? Color(0xFF85D420)
                      : appTheme.colorFFC0C8,
                  height: 1.2),
            ),
          ),
        ));
  }

  Widget _buildProblemDescriptionLabel() {
    return Positioned(
      left: 12.h,
      top: 138.h,
      child: Text(
        'Please describe your problem',
        style: TextStyleHelper.instance.body14
            .copyWith(color: appTheme.whiteCustom, height: 1.2),
      ),
    );
  }

  Widget _buildTextArea() {
    return Positioned(
      left: 12.h,
      top: 165.h,
      child: Container(
        width: 289.h,
        height: 142.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2E31,
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.h),
              child: TextField(
                controller: controller.textController,
                maxLines: null,
                maxLength: 200,
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.2),
                decoration: InputDecoration(
                  hintText: 'Please enter...',
                  hintStyle: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                  border: InputBorder.none,
                  counterText: '',
                ),
                onChanged: (value) => controller.updateCharacterCount(value),
              ),
            ),
            Positioned(
              bottom: 9.h,
              right: 10.h,
              child: Obx(() => Text(
                    '${controller.characterCount.value} / 200',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.2),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Positioned(
      bottom: 12.h,
      left: 12.h,
      child: Row(
        children: [
          CustomButton(
            text: 'Cancel',
            width: 138.h,
            height: 40.h,
            backgroundColor: appTheme.colorFF2528,
            textColor: appTheme.whiteCustom,
            borderRadius: 4.h,
            fontSize: 16.fSize,
            onPressed: () => controller.onCancelPressed(),
          ),
          SizedBox(width: 13.h),
          CustomButton(
            text: 'Submit',
            width: 138.h,
            height: 40.h,
            backgroundColor: appTheme.colorFF60AC,
            textColor: appTheme.whiteCustom,
            borderRadius: 4.h,
            fontSize: 16.fSize,
            onPressed: () => controller.onSubmitPressed(),
          ),
        ],
      ),
    );
  }
}
