import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/suggestion_feedback_modal_screen_two_controller.dart';

// Modified: Added controller import

class SuggestionFeedbackModalScreenTwo extends StatelessWidget {
  SuggestionFeedbackModalScreenTwo({Key? key}) : super(key: key);

  SuggestionFeedbackModalScreenTwoController controller = Get.find<
      SuggestionFeedbackModalScreenTwoController>(); // Modified: Fixed controller type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(128),
      body: Center(
        child: Container(
          width: 375.h,
          height: 812.h,
          child: Stack(
            children: [
              Positioned(
                top: 150.h,
                left: 31.h,
                child: _buildSuggestionModal(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuggestionModal() {
    return Container(
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
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildModalHeader(),
          SizedBox(height: 16.h),
          _buildQuestionTypeSection(),
          SizedBox(height: 16.h),
          _buildDescriptionSection(),
          SizedBox(height: 24.h),
          _buildActionButtons(),
        ],
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
              style: TextStyleHelper.instance.title16BoldArial,
            ),
          ],
        ),
        GestureDetector(
          onTap: () => controller.onClosePressed(),
          child: Container(
            width: 20.h,
            height: 20.h,
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

  Widget _buildQuestionTypeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select question type',
          style: TextStyleHelper.instance.body14Arial
              .copyWith(color: appTheme.whiteCustom),
        ),
        SizedBox(height: 8.h),
        _buildDropdown(),
      ],
    );
  }

  Widget _buildDropdown() {
    return GestureDetector(
      onTap: () => controller.onDropdownPressed(),
      child: Container(
        width: 289.h,
        height: 40.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(4.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  controller.selectedQuestionType.value ??
                      'Please select your question type',
                  style: TextStyleHelper.instance.body14Arial,
                )),
            CustomImageView(
              imagePath: ImageConstant.imgComponent6,
              height: 20.h,
              width: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please describe your problem',
          style: TextStyleHelper.instance.body14Arial
              .copyWith(color: appTheme.whiteCustom),
        ),
        SizedBox(height: 8.h),
        _buildTextArea(),
      ],
    );
  }

  Widget _buildTextArea() {
    return Container(
      width: 289.h,
      height: 142.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2E31,
        borderRadius: BorderRadius.circular(4.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Stack(
        children: [
          TextField(
            controller: controller.descriptionController,
            maxLines: null,
            maxLength: 200,
            style: TextStyleHelper.instance.body14Arial,
            decoration: InputDecoration(
              hintText: 'Please enter...',
              hintStyle: TextStyleHelper.instance.body14Arial,
              border: InputBorder.none,
              counterText: '',
            ),
            onChanged: (value) => controller.onDescriptionChanged(value),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Obx(() => Text(
                  '${controller.characterCount.value} / 200',
                  style: TextStyleHelper.instance.body12Arial
                      .copyWith(color: appTheme.colorFF4B55),
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
          borderRadius: 4.h,
          fontSize: 16.fSize,
          onPressed: () => controller.onCancelPressed(),
        ),
        SizedBox(width: 12.h),
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
    );
  }
}
