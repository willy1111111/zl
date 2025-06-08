import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_modal_model.dart';

class GameModalWidget extends StatelessWidget {
  final GameModalModel modalData;
  final VoidCallback? onTap;

  GameModalWidget({
    Key? key,
    required this.modalData,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 120.h,
        height: 120.h,
        child: Stack(
          children: [
            // Background image
            CustomImageView(
              imagePath: modalData.backgroundImage?.value ?? '',
              height: 120.h,
              width: 120.h,
              fit: BoxFit.cover,
            ),

            // Overlay image
            if (modalData.overlayImage?.value.isNotEmpty == true)
              Positioned.fill(
                child: CustomImageView(
                  imagePath: modalData.overlayImage!.value,
                  height: 120.h,
                  width: 120.h,
                  fit: BoxFit.cover,
                ),
              ),

            // Content image
            if (modalData.contentImage?.value.isNotEmpty == true)
              Positioned(
                top: 3.h,
                left: 15.h,
                child: CustomImageView(
                  imagePath: modalData.contentImage!.value,
                  height: 99.h,
                  width: 91.h,
                ),
              ),

            // Badge
            if (modalData.showBadge?.value ?? false)
              Positioned(
                top: 11.h,
                right: 16.h,
                child: Container(
                  width: 16.h,
                  height: 16.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF335,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Center(
                    child: Text(
                      '${modalData.badgeCount?.value ?? 0}',
                      style: TextStyleHelper.instance.body12Bold2
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ),

            // Vector image (for sign-in modal)
            if (modalData.vectorImage?.value.isNotEmpty == true)
              Positioned(
                top: 54.h,
                left: 9.h,
                child: CustomImageView(
                  imagePath: modalData.vectorImage!.value,
                  height: 17.h,
                  width: 101.h,
                ),
              ),

            // Star image (for sign-in modal)
            if (modalData.starImage?.value.isNotEmpty == true)
              Positioned(
                top: 58.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: modalData.starImage!.value,
                  height: 12.h,
                  width: 11.h,
                ),
              ),

            // Timer text (for sign-in modal)
            if (modalData.timerText?.value.isNotEmpty == true)
              Positioned(
                top: 55.h,
                left: 24.h,
                child: Text(
                  modalData.timerText!.value,
                  style: TextStyleHelper.instance.body14Bold2
                      .copyWith(color: appTheme.colorFFFDFF),
                ),
              ),

            // Money rain image
            if (modalData.moneyRainImage?.value.isNotEmpty == true)
              Positioned(
                top: 72.h,
                left: 1.h,
                child: CustomImageView(
                  imagePath: modalData.moneyRainImage!.value,
                  height: 22.h,
                  width: 118.h,
                ),
              ),

            // Button background
            if (modalData.buttonBackgroundImage?.value.isNotEmpty == true)
              Positioned(
                top: 90.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: modalData.buttonBackgroundImage!.value,
                  height: 30.h,
                  width: 96.h,
                ),
              ),

            // Button text
            if (modalData.buttonText?.value.isNotEmpty == true)
              Positioned(
                top: 88.h,
                left: modalData.buttonText!.value == 'Receive'
                    ? 30.h
                    : modalData.buttonText!.value == 'Details'
                        ? 34.h
                        : 19.h,
                child: Text(
                  modalData.buttonText!.value,
                  style: TextStyleHelper.instance.title16Bold.copyWith(
                      color: appTheme.whiteCustom,
                      height: 1.75,
                      shadows: [
                        Shadow(
                          color: appTheme.blackCustom,
                          offset: Offset(0, 1.h),
                          blurRadius: 2.h,
                        ),
                      ]),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
