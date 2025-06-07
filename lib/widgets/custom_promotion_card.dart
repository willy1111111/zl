import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomPromotionCard - A reusable card component with gradient background, overlay image, and arrow icon
 * 
 * This widget creates a layered card with:
 * - Gradient background with customizable colors
 * - Background image with cover fit
 * - Overlay image positioned at top
 * - Arrow icon at top-right corner
 * - Optional margins and tap functionality
 * 
 * @param backgroundImagePath - Path to the background image
 * @param overlayImagePath - Path to the overlay image positioned at top
 * @param gradientColors - List of colors for the gradient background
 * @param borderColor - Color of the card border
 * @param arrowIconPath - Path to the arrow icon (defaults to standard arrow)
 * @param margin - EdgeInsets for card margins
 * @param onTap - Callback function when card is tapped
 * @param height - Height of the card (defaults to 70.h)
 * @param altText - Accessibility text for the card
 */
class CustomPromotionCard extends StatelessWidget {
  const CustomPromotionCard({
    Key? key,
    required this.backgroundImagePath,
    required this.overlayImagePath,
    this.gradientColors,
    this.borderColor,
    this.arrowIconPath,
    this.margin,
    this.onTap,
    this.height,
    this.altText,
  }) : super(key: key);

  /// Path to the background image
  final String backgroundImagePath;

  /// Path to the overlay image positioned at top
  final String overlayImagePath;

  /// List of colors for the gradient background
  final List<Color>? gradientColors;

  /// Color of the card border
  final Color? borderColor;

  /// Path to the arrow icon
  final String? arrowIconPath;

  /// EdgeInsets for card margins
  final EdgeInsets? margin;

  /// Callback function when card is tapped
  final VoidCallback? onTap;

  /// Height of the card
  final double? height;

  /// Accessibility text for the card
  final String? altText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.h),
        child: Stack(
          children: [
            // Main card container with gradient and background image
            Container(
              height: height ?? 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradientColors ??
                      [
                        appTheme.colorFFF9A9,
                        appTheme.colorFFF9A9.withAlpha(204),
                      ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(8.h),
                border: Border.all(
                  color: borderColor ?? appTheme.colorFFF9A9,
                  width: 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.h),
                child: CustomImageView(
                  imagePath: backgroundImagePath,
                  width: double.infinity,
                  height: height ?? 70.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Overlay image positioned at top
            Positioned(
              top: -4.h,
              left: 0,
              right: 0,
              child: CustomImageView(
                imagePath: overlayImagePath,
                width: double.infinity,
                height: 74.h,
                fit: BoxFit.cover,
              ),
            ),

            // Arrow icon positioned at top-right
            Positioned(
              top: 6.h,
              right: 4.h,
              child: CustomImageView(
                imagePath: arrowIconPath ?? ImageConstant.imgGroup1260,
                width: 6.h,
                height: 8.h,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Predefined gradient color sets for common card variants
class CustomPromotionCardVariants {
  static final List<Color> orangeGradient = [
    // Modified: Removed const to fix compile-time constant error
    Color(0xFFf9a94a),
    appTheme.colorFFF9A9,
  ];

  static final List<Color> purpleGradient = [
    // Modified: Removed const to fix compile-time constant error
    Color(0xFFb2bcfa),
    appTheme.colorFFB2BC,
  ];

  static final List<Color> blueGradient = [
    // Modified: Removed const to fix compile-time constant error
    Color(0xFFaecad6),
    appTheme.colorFFAECA,
  ];

  static final Color orangeBorder = appTheme
      .colorFFF9A9; // Modified: Removed const to fix compile-time constant error
  static final Color purpleBorder = appTheme
      .colorFFB2BC; // Modified: Removed const to fix compile-time constant error
  static final Color blueBorder = appTheme
      .colorFFAECA; // Modified: Removed const to fix compile-time constant error
}
