import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './controller/ticket_event_confirmation_dialog_controller.dart';

class TicketEventConfirmationDialogScreen
    extends GetWidget<TicketEventConfirmationDialogController> {
  const TicketEventConfirmationDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.all(24.h),
        child: Center(
          child: Container(
            width: 328.h,
            height: 167.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(12.h),
            ),
            child: Column(
              children: [
                _buildDialogHeader(),
                _buildDialogContent(),
                Spacer(),
                _buildActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDialogHeader() {
    return Container(
      padding: EdgeInsets.only(
        top: 11.h,
        left: 21.h,
        right: 21.h,
      ),
      child: Text(
        'Confirmation',
        style: TextStyleHelper.instance.title18BoldArial.copyWith(height: 1.17),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildDialogContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      margin: EdgeInsets.only(top: 21.h),
      child: Text(
        'This ticket can be claimed only using the APP.',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.colorFF8089, height: 1.25),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Row(
      children: [
        _buildCancelButton(),
        _buildDownloadButton(),
      ],
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          controller.closeDialog();
        },
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
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.colorFF478A, height: 1.19),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDownloadButton() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          controller.downloadApp();
        },
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
              'Download',
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.whiteCustom, height: 1.19),
            ),
          ),
        ),
      ),
    );
  }
}
