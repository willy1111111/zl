import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/email_binding_confirmation_controller.dart';

class EmailBindingConfirmationScreen
    extends GetWidget<EmailBindingConfirmationController> {
  EmailBindingConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(128),
      body: Center(
        child: Container(
          width: 328.h,
          height: 167.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.circular(12.h),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDialogHeader(),
              _buildDialogContent(),
              Spacer(),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDialogHeader() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 20.h,
        right: 20.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1Red400,
            width: 16.h,
            height: 15.h,
          ),
          SizedBox(width: 12.h),
          Text(
            'Notice',
            style: TextStyleHelper.instance.title18BoldArial,
          ),
        ],
      ),
    );
  }

  Widget _buildDialogContent() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 20.h,
        right: 20.h,
        bottom: 24.h,
      ),
      child: Text(
        'Once the email is bound, it cannot be modified, please check carefully',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.colorFF8089, height: 1.25),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      height: 50.h,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onCancelPressed(),
              child: Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.h),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.colorFF478A),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onConfirmPressed(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF76CD00),
                      appTheme.colorFF478A,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.h),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Confirm',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
