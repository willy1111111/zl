import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/instruction_step_model.dart';
import './social_media_example_widget.dart';

class InstructionStepWidget extends StatelessWidget {
  final InstructionStepModel instructionStep;

  InstructionStepWidget({
    Key? key,
    required this.instructionStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildStepHeader(),
        SizedBox(height: 16.h),
        _buildStepCard(),
      ],
    );
  }

  Widget _buildStepHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CustomImageView(
                imagePath: instructionStep.decorationImageLeft?.value ?? '',
                height: instructionStep.stepNumber?.value == '1' ? 42.h : 53.h,
                width: instructionStep.stepNumber?.value == '1' ? 36.h : 45.h,
              ),
              SizedBox(height: 8.h),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFD90C), Color(0xFFFFB305)],
                  ),
                  borderRadius: BorderRadius.circular(24.h),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4.h),
                      blurRadius: 8.h,
                      color: Colors.black26,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: instructionStep.stepNumber?.value == '1'
                      ? 24.h
                      : instructionStep.stepNumber?.value == '2'
                          ? 16.h
                          : 8.h,
                  vertical:
                      instructionStep.stepNumber?.value == '1' ? 8.h : 12.h,
                ),
                child: Text(
                  instructionStep.stepTitle?.value ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.textStyle27
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                instructionStep.stepNumber?.value ?? '',
                style: TextStyleHelper.instance.textStyle27
                    .copyWith(color: appTheme.whiteCustom, shadows: [
                  Shadow(
                    offset: Offset(0, 4.h),
                    blurRadius: 8.h,
                    color: Colors.black26,
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: instructionStep.decorationImageRight?.value ?? '',
          height: instructionStep.stepNumber?.value == '1' ? 37.h : 46.h,
          width: instructionStep.stepNumber?.value == '1' ? 36.h : 45.h,
        ),
      ],
    );
  }

  Widget _buildStepCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF3B3937), Color(0xFF293926)],
        ),
        border: Border.all(color: appTheme.colorFF4048, width: 4.h),
        borderRadius: BorderRadius.circular(24.h),
      ),
      padding: EdgeInsets.all(24.h),
      child: _buildStepContent(),
    );
  }

  Widget _buildStepContent() {
    switch (instructionStep.stepType?.value) {
      case StepType.download:
        return _buildDownloadContent();
      case StepType.verification:
        return _buildVerificationContent();
      case StepType.invite:
        return _buildInviteContent();
      case StepType.progress:
        return _buildProgressContent();
      default:
        return SizedBox();
    }
  }

  Widget _buildDownloadContent() {
    return Column(
      children: [
        Text(
          instructionStep.cardTitle?.value ?? '',
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14Bold,
        ),
        SizedBox(height: 16.h),
        CustomImageView(
          imagePath: instructionStep.mainImage?.value ?? '',
          height: 101.h,
          width: 165.h,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildVerificationContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          instructionStep.cardTitle?.value ?? '',
          style: TextStyleHelper.instance.body14Bold,
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            CustomImageView(
              imagePath: instructionStep.mainImage?.value ?? '',
              height: 101.h,
              width: 165.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.h),
            CustomImageView(
              imagePath: instructionStep.secondaryImage?.value ?? '',
              height: 159.h,
              width: 165.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInviteContent() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFF38C),
                appTheme.colorFFFFD6,
                Color(0xFFE66E00)
              ],
            ),
            borderRadius: BorderRadius.circular(9.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
          child: Text(
            instructionStep.cardTitle?.value ?? '',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF6B00),
          ),
        ),
        SizedBox(height: 16.h),
        if (instructionStep.inviteSteps?.isNotEmpty == true)
          ...instructionStep.inviteSteps!.map((step) => _buildInviteStep(step)),
        if (instructionStep.socialMediaExamples?.isNotEmpty == true) ...[
          SizedBox(height: 24.h),
          ...instructionStep.socialMediaExamples!.map((example) =>
              SocialMediaExampleWidget(socialMediaExample: example)),
        ],
        if (instructionStep.additionalImages?.isNotEmpty == true) ...[
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: CustomImageView(
                  imagePath: instructionStep.additionalImages![0].value ?? '',
                  height: 140.h,
                  width: 277.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: appTheme.colorFF5E73, width: 2.h),
                    borderRadius: BorderRadius.circular(10.h),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4.h),
                        blurRadius: 8.h,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: CustomImageView(
                    imagePath: instructionStep.additionalImages![1].value ?? '',
                    height: 140.h,
                    width: 277.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildInviteStep(InviteStepModel step) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          step.stepTitle?.value ?? '',
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
        SizedBox(height: 8.h),
        if (step.stepTitle?.value == 'Step 1 :') ...[
          Container(
            height: 2.h,
            width: double.infinity,
            color: appTheme.colorFF85D4,
          ),
          SizedBox(height: 8.h),
        ],
        Text(
          step.description?.value ?? '',
          style: TextStyleHelper.instance.body12
              .copyWith(color: appTheme.whiteCustom),
        ),
        if (step.buttonText?.value.isNotEmpty == true) ...[
          SizedBox(height: 4.h),
          Text(
            step.buttonText?.value ?? '',
            style: TextStyleHelper.instance.body12SemiBold,
          ),
        ],
        SizedBox(height: 16.h),
        CustomImageView(
          imagePath: step.stepImage?.value ?? '',
          height: step.stepTitle?.value == 'Step 1 :' ? 200.h : 200.h,
          width: step.stepTitle?.value == 'Step 1 :' ? 179.h : 260.h,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildProgressContent() {
    return Column(
      children: [
        Text(
          instructionStep.cardTitle?.value ?? '',
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14Bold,
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            CustomImageView(
              imagePath: instructionStep.progressImages?[0].value ?? '',
              height: 242.h,
              width: 121.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: CustomImageView(
                imagePath: instructionStep.progressImages?[1].value ?? '',
                height: 240.h,
                width: 329.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        CustomImageView(
          imagePath: instructionStep.progressImages?[2].value ?? '',
          height: 243.h,
          width: 229.h,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16.h),
        Text(
          instructionStep.footerText?.value ?? '',
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14Bold,
        ),
      ],
    );
  }
}
