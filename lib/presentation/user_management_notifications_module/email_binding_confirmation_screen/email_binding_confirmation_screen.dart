import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './controller/email_binding_confirmation_controller.dart';

class EmailBindingConfirmationScreen
    extends GetWidget<EmailBindingConfirmationController> {
  EmailBindingConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Background overlay
            Container(
              width: double.infinity,
              height: double.infinity,
              color: appTheme.blackCustom.withAlpha(128),
            ),

            // Dialog container
            Center(
              child: Container(
                width: 328.h,
                height: 167.h,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Column(
                  children: [
                    // Dialog Header
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                        left: 24.h,
                        right: 24.h,
                      ),
                      child: Text(
                        'Hint',
                        style: TextStyleHelper.instance.title18Bold,
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // Dialog Content
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 24.h,
                        ),
                        child: Text(
                          'Once the email is bound, it cannot be modified, please check carefully',
                          style: TextStyleHelper.instance.title16Bold.copyWith(
                              color: appTheme.colorFF8089, height: 1.125),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    // Action Buttons Container
                    Row(
                      children: [
                        // Cancel Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () => controller.handleCancel(),
                            child: Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF2528,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.h),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: TextStyleHelper.instance.title16Bold
                                      .copyWith(color: appTheme.colorFF478A),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Confirm Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () => controller.handleConfirm(),
                            child: Container(
                              height: 50.h,
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
                                  style: TextStyleHelper.instance.title16Bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
