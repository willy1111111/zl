import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/promotional_overlay_model.dart';

class PromotionalOverlayWidget extends StatelessWidget {
  final PromotionalOverlayModel promotionalOverlayModel;
  final VoidCallback? onTap;

  const PromotionalOverlayWidget({
    Key? key,
    required this.promotionalOverlayModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: promotionalOverlayModel.topPosition?.value,
      left: promotionalOverlayModel.leftPosition?.value,
      right: promotionalOverlayModel.rightPosition?.value,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 120.h,
          height: 120.h,
          child: Stack(
            children: [
              // Background image
              CustomImageView(
                imagePath: promotionalOverlayModel.backgroundImage?.value ?? '',
                height: 120.h,
                width: 120.h,
              ),

              // Overlay frame
              CustomImageView(
                imagePath: promotionalOverlayModel.overlayImage?.value ?? '',
                height: 120.h,
                width: 120.h,
              ),

              // Character image
              Positioned(
                top: 3.h,
                left: 15.h,
                child: CustomImageView(
                  imagePath:
                      promotionalOverlayModel.characterImage?.value ?? '',
                  height: 99.h,
                  width: 91.h,
                ),
              ),

              // Badge (if shown)
              if (promotionalOverlayModel.showBadge?.value ?? false)
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
                        '${promotionalOverlayModel.badgeCount?.value ?? 0}',
                        style: TextStyleHelper.instance.body12Bold2
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),

              // Timer text (if available)
              if (promotionalOverlayModel.timerText?.value != null)
                Positioned(
                  top: 55.h,
                  left: 24.h,
                  child: Text(
                    promotionalOverlayModel.timerText?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold2
                        .copyWith(color: appTheme.colorFFFDFF),
                  ),
                ),

              // Vector (if available)
              if (promotionalOverlayModel.timerText?.value != null)
                Positioned(
                  top: 54.h,
                  left: 9.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 17.h,
                    width: 101.h,
                  ),
                ),

              // Star (if available)
              if (promotionalOverlayModel.timerText?.value != null)
                Positioned(
                  top: 58.h,
                  left: 12.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgYellow70001,
                    height: 12.h,
                    width: 11.h,
                  ),
                ),

              // Money rain image
              if (promotionalOverlayModel.moneyRainImage?.value != null)
                Positioned(
                  top: 72.h,
                  left: 1.h,
                  child: CustomImageView(
                    imagePath:
                        promotionalOverlayModel.moneyRainImage?.value ?? '',
                    height: 22.h,
                    width: 118.h,
                  ),
                ),

              // Button background
              if (promotionalOverlayModel.buttonBackgroundImage?.value != null)
                Positioned(
                  top: 90.h,
                  left: 12.h,
                  child: CustomImageView(
                    imagePath:
                        promotionalOverlayModel.buttonBackgroundImage?.value ??
                            '',
                    height: 30.h,
                    width: 96.h,
                  ),
                ),

              // Button text
              if (promotionalOverlayModel.buttonText?.value != null)
                Positioned(
                  top: 88.h,
                  left: promotionalOverlayModel.buttonText?.value == 'Details'
                      ? 34.h
                      : promotionalOverlayModel.buttonText?.value ==
                              '23:00 Start'
                          ? 19.h
                          : 30.h,
                  child: Text(
                    promotionalOverlayModel.buttonText?.value ?? '',
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
      ),
    );
  }
}
