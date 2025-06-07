import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomButton - A flexible and reusable button component
 * 
 * Supports multiple variants including:
 * - Simple text buttons with solid background
 * - Buttons with gradient backgrounds
 * - Buttons with optional leading icons
 * - Customizable dimensions, colors, and text styling
 * 
 * @param text - Button text content
 * @param onTap - Callback function when button is tapped
 * @param width - Button width (optional)
 * @param height - Button height (optional)
 * @param backgroundColor - Solid background color (optional)
 * @param gradient - Gradient background (optional, overrides backgroundColor)
 * @param textColor - Text color (optional)
 * @param fontSize - Text font size (optional)
 * @param fontWeight - Text font weight (optional)
 * @param borderRadius - Border radius value (optional)
 * @param iconPath - Path to icon image (optional)
 * @param iconSize - Size of the icon (optional)
 * @param padding - Internal padding (optional)
 * @param isEnabled - Whether button is enabled (optional)
 */
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.backgroundColor,
    this.gradient,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.iconPath,
    this.iconSize,
    this.padding,
    this.isEnabled,
  }) : super(key: key);

  /// Button text content
  final String text;

  /// Callback function when button is tapped
  final VoidCallback? onTap;

  /// Button width
  final double? width;

  /// Button height
  final double? height;

  /// Solid background color
  final Color? backgroundColor;

  /// Gradient background (overrides backgroundColor if provided)
  final LinearGradient? gradient;

  /// Text color
  final Color? textColor;

  /// Text font size
  final double? fontSize;

  /// Text font weight
  final FontWeight? fontWeight;

  /// Border radius value
  final double? borderRadius;

  /// Path to icon image
  final String? iconPath;

  /// Size of the icon
  final double? iconSize;

  /// Internal padding
  final EdgeInsetsGeometry? padding;

  /// Whether button is enabled
  final bool? isEnabled;

  @override
  Widget build(BuildContext context) {
    final bool buttonEnabled = isEnabled ?? true;
    final double buttonWidth = width ?? 80.h;
    final double buttonHeight = height ?? 30.h;
    final double buttonBorderRadius = borderRadius ?? 15.h;
    final Color buttonTextColor = textColor ?? appTheme.whiteCustom;
    final double buttonFontSize = fontSize ?? 14.fSize;
    final FontWeight buttonFontWeight = fontWeight ?? FontWeight.normal;
    final EdgeInsetsGeometry buttonPadding =
        padding ?? EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h);
    final double buttonIconSize = iconSize ?? 20.h;

    return InkWell(
      onTap: buttonEnabled ? onTap : null,
      borderRadius: BorderRadius.circular(buttonBorderRadius),
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        padding: buttonPadding,
        decoration: BoxDecoration(
          color:
              gradient == null ? (backgroundColor ?? Color(0xFF737373)) : null,
          gradient: gradient,
          borderRadius: BorderRadius.circular(buttonBorderRadius),
          boxShadow: gradient != null
              ? [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (iconPath != null) ...[
              CustomImageView(
                imagePath: iconPath!,
                width: buttonIconSize,
                height: buttonIconSize,
              ),
              SizedBox(width: 8.h),
            ],
            Flexible(
              child: Text(
                text,
                style: TextStyleHelper.instance.textStyle17.copyWith(
                    color: buttonEnabled
                        ? buttonTextColor
                        : buttonTextColor.withAlpha(128)),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Predefined gradient styles for common use cases
class CustomButtonGradients {
  static final LinearGradient greenGradient = LinearGradient(
    // Modified: Changed const to final to resolve const initialization error
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF52D1C6),
      appTheme.colorFF85D4,
    ],
  );

  static final LinearGradient darkGradient = LinearGradient(
    // Modified: Changed const to final to resolve const initialization error
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF2A2D35),
      appTheme.colorFF1A1D,
    ],
  );
}
