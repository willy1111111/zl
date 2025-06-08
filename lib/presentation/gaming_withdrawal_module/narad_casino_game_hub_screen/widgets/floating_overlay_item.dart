import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/floating_overlay_model.dart';

class FloatingOverlayItem extends StatelessWidget {
  final FloatingOverlayModel floatingOverlay;
  final VoidCallback? onTap;

  FloatingOverlayItem({
    Key? key,
    required this.floatingOverlay,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: 120.h,
            width: 120.h,
            child: Stack(
              children: [
                // Background image
                CustomImageView(
                  imagePath: floatingOverlay.backgroundImage?.value ?? '',
                  height: 120.h,
                  width: 120.h,
                  fit: BoxFit.cover,
                ),

                // Overlay image
                CustomImageView(
                  imagePath: floatingOverlay.overlayImage?.value ?? '',
                  height: 120.h,
                  width: 120.h,
                  fit: BoxFit.cover,
                ),

                // Icon image
                Positioned(
                  top: 3.h,
                  left: 15.h,
                  child: CustomImageView(
                    imagePath: floatingOverlay.iconImage?.value ?? '',
                    height: 91.h,
                    width: 99.h,
                    fit: BoxFit.cover,
                  ),
                ),

                // Notification badge (if exists)
                if (floatingOverlay.hasBadge?.value ?? false)
                  Positioned(
                    top: 11.h,
                    right: 16.h,
                    child: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Center(
                        child: Text(
                          '${floatingOverlay.badgeCount?.value ?? 0}',
                          style: TextStyleHelper.instance.body12Bold2
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ),
                  ),

                // Bottom section with effect and button
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      // Effect image
                      Positioned(
                        bottom: 48.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: floatingOverlay.effectImage?.value ?? '',
                          height: 22.h,
                          width: 118.h,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Button background
                      Positioned(
                        bottom: 30.h,
                        left: 12.h,
                        child: CustomImageView(
                          imagePath: floatingOverlay.buttonImage?.value ?? '',
                          height: 30.h,
                          width: 96.h,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Button text
                      Positioned(
                        bottom: 32.h,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Text(
                            floatingOverlay.buttonText?.value ?? '',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
