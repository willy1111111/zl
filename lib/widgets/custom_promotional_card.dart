import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomPromotionalCard - A layered promotional card component with background image,
 * overlay, character icon, and arrow. Supports different gradient backgrounds and
 * configurable positioning for various promotional content.
 * 
 * @param backgroundImagePath - Path to the background image
 * @param overlayImagePath - Path to the overlay image  
 * @param characterImagePath - Path to the character/gift icon image
 * @param arrowImagePath - Path to the arrow icon image
 * @param gradientColors - List of colors for the background gradient
 * @param margin - EdgeInsets for the card margin
 * @param characterIconSize - Size for the character icon
 * @param characterIconOffset - Offset position for the character icon
 * @param overlayIconOffset - Offset position for the overlay image
 * @param arrowIconOffset - Offset position for the arrow icon
 * @param onTap - Callback function when card is tapped
 */
class CustomPromotionalCard extends StatelessWidget {
  const CustomPromotionalCard({
    Key? key,
    this.backgroundImagePath,
    this.overlayImagePath,
    this.characterImagePath,
    this.arrowImagePath,
    this.gradientColors,
    this.margin,
    this.characterIconSize,
    this.characterIconOffset,
    this.overlayIconOffset,
    this.arrowIconOffset,
    this.onTap,
  }) : super(key: key);

  /// Path to the background image
  final String? backgroundImagePath;

  /// Path to the overlay image
  final String? overlayImagePath;

  /// Path to the character/gift icon image
  final String? characterImagePath;

  /// Path to the arrow icon image
  final String? arrowImagePath;

  /// List of colors for the background gradient
  final List<Color>? gradientColors;

  /// EdgeInsets for the card margin
  final EdgeInsets? margin;

  /// Size for the character icon
  final Size? characterIconSize;

  /// Offset position for the character icon from top-left
  final Offset? characterIconOffset;

  /// Offset position for the overlay image from top-left
  final Offset? overlayIconOffset;

  /// Offset position for the arrow icon from top-right
  final Offset? arrowIconOffset;

  /// Callback function when card is tapped
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 70.h,
          child: Stack(
            children: [
              // Background container with gradient and border
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradientColors ??
                        [
                          Color(0xFF289EFE).withAlpha(26),
                          Color(0xFF289EFE).withAlpha(77),
                        ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(
                    color: appTheme.colorFF289E,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.h),
                  child: CustomImageView(
                    imagePath: backgroundImagePath ?? ImageConstant.img4,
                    height: 70.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Overlay image
              if (overlayImagePath != null)
                Positioned(
                  top: (overlayIconOffset?.dy ?? -4).h,
                  left: (overlayIconOffset?.dx ?? 95).h,
                  child: CustomImageView(
                    imagePath: overlayImagePath!,
                    height: 74.h,
                    width: 250.h,
                  ),
                ),

              // Character/Gift icon
              if (characterImagePath != null)
                Positioned(
                  top: (characterIconOffset?.dy ?? -4).h,
                  left: (characterIconOffset?.dx ?? 0).h,
                  child: CustomImageView(
                    imagePath: characterImagePath!,
                    height: (characterIconSize?.height ?? 77).h,
                    width: (characterIconSize?.width ?? 105).h,
                    fit: BoxFit.cover,
                  ),
                ),

              // Arrow icon
              if (arrowImagePath != null)
                Positioned(
                  top: (arrowIconOffset?.dy ?? 24).h,
                  right: (arrowIconOffset?.dx ?? 16).h,
                  child: CustomImageView(
                    imagePath: arrowImagePath!,
                    height: 32.h,
                    width: 24.h,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
