import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/suggestion_feedback_modal_controller.dart';

class SuggestionFeedbackModalScreen
    extends GetWidget<SuggestionFeedbackModalController> {
  const SuggestionFeedbackModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(128),
      body: Center(
        child: Container(
          width: 313.h,
          height: 416.h,
          margin: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF3F43,
            border: Border.all(
              color: appTheme.colorFF292F,
              width: 2.h,
            ),
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.all(12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildModalHeader(),
              SizedBox(height: 16.h),
              _buildFormContent(),
              SizedBox(height: 16.h),
              _buildErrorMessage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame12724,
              height: 24.h,
              width: 24.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Suggestion',
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(height: 1.19),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => controller.onClosePressed(),
          child: Padding(
            padding: EdgeInsets.all(4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 20.h,
              width: 20.h,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFormContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select question type',
            style: TextStyleHelper.instance.body14Arial
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
          ),
          SizedBox(height: 8.h),
          _buildDropdown(),
          SizedBox(height: 24.h),
          Text(
            'Please describe your problem',
            style: TextStyleHelper.instance.body14Arial
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
          ),
          SizedBox(height: 8.h),
          _buildTextArea(),
          SizedBox(height: 24.h),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildDropdown() {
    return Obx(() => GestureDetector(
          onTap: () => controller.onDropdownTapped(),
          child: Container(
            height: 40.h,
            width: 289.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF4B55,
              borderRadius: BorderRadius.circular(4.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.selectedQuestionType.value ?? 'Deposit issues',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(height: 1.21),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgComponent6,
                  height: 20.h,
                  width: 20.h,
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildTextArea() {
    return Container(
      height: 142.h,
      width: 289.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF4B55,
        borderRadius: BorderRadius.circular(4.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Stack(
        children: [
          TextField(
            controller: controller.descriptionController,
            maxLines: null,
            maxLength: 200,
            decoration: InputDecoration(
              hintText: 'Please enter...',
              hintStyle:
                  TextStyleHelper.instance.body14Arial.copyWith(height: 1.21),
              border: InputBorder.none,
              counterText: '',
            ),
            style: TextStyleHelper.instance.body14Arial.copyWith(height: 1.21),
            onChanged: (value) => controller.onDescriptionChanged(value),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Obx(() => Text(
                  '${controller.characterCount.value} / 200',
                  style: TextStyleHelper.instance.body12Arial
                      .copyWith(height: 1.17),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        CustomButton(
          text: 'Cancel',
          width: 138.h,
          height: 40.h,
          backgroundColor: appTheme.colorFF2528,
          textColor: appTheme.whiteCustom,
          fontSize: 16.fSize,
          onPressed: () => controller.onCancelPressed(),
        ),
        SizedBox(width: 12.h),
        CustomButton(
          text: 'Submit',
          width: 138.h,
          height: 40.h,
          backgroundColor: appTheme.colorFF4B55,
          textColor: appTheme.colorFF8089,
          fontSize: 16.fSize,
          onPressed: () => controller.onSubmitPressed(),
        ),
      ],
    );
  }

  Widget _buildErrorMessage() {
    return Obx(() => Visibility(
          visible: controller.showErrorMessage.value ?? false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorRedA20001,
                  height: 14.h,
                  width: 14.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  'Daily limit of 5 has been reached',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(color: appTheme.colorFFFF5E, height: 1.21),
                ),
              ],
            ),
          ),
        ));
  }
}
