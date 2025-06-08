import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/help_invitation_modal_controller.dart';

class HelpInvitationModalScreen
    extends GetWidget<HelpInvitationModalController> {
  HelpInvitationModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(128),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                _buildModalContent(),
                _buildCloseButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModalContent() {
    return Container(
      width: 345.h,
      height: 186.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleSection(),
          SizedBox(height: 16.h),
          _buildPlayerIdsList(),
          SizedBox(height: 16.h),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: -48.h,
      right: 0,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: Container(
          width: 32.h,
          height: 32.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF6B72,
            borderRadius: BorderRadius.circular(16.h),
          ),
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.img4,
              height: 20.h,
              width: 20.h,
              color: appTheme.whiteCustom,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Text(
      'Send a help invitation to a random player',
      style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.2),
    );
  }

  Widget _buildPlayerIdsList() {
    return Container(
      height: 61.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(
          color: appTheme.colorFF2E38,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Obx(() {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 3.5,
          ),
          itemCount: controller.playerIds.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Text(
              controller.playerIds[index].id?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color:
                      controller.playerIds[index].isHighlighted?.value ?? false
                          ? Color(0xFFBCBCBC)
                          : appTheme.colorFF8089,
                  height: 1.2),
            );
          },
        );
      }),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Send message on WhatsAPP',
            leftIcon: ImageConstant.img1WhiteA700,
            variant: CustomButtonVariant.orange,
            height: 40.h,
            borderRadius: 4.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
            onPressed: () => controller.onWhatsAppPressed(),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: CustomButton(
            text: 'Sending a text message',
            leftIcon: ImageConstant.img1WhiteA70024x24,
            variant: CustomButtonVariant.gold,
            height: 40.h,
            borderRadius: 4.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
            onPressed: () => controller.onSmsPressed(),
          ),
        ),
      ],
    );
  }
}
