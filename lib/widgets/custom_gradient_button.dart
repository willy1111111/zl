import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * CustomGradientButton - A reusable gradient button component with customizable styling
 * 
 * Features:
 * - Gradient background support
 * - Customizable border and text styling  
 * - Responsive design with SizeUtils
 * - Configurable padding and dimensions
 * 
 * @param text - Button text content
 * @param onTap - Callback function when button is tapped
 * @param borderColor - Color of the button border
 * @param gradientColors - List of colors for gradient background
 * @param textColor - Color of the button text
 * @param borderRadius - Corner radius of the button
 * @param padding - Internal padding of the button
 * @param fontSize - Size of the button text
 * @param fontWeight - Weight of the button text
 */
class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    Key? key,
    required this.text,
    this.onTap,
    this.borderColor,
    this.gradientColors,
    this.textColor,
    this.borderRadius,
    this.padding,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  /// Button text content
  final String text;

  /// Callback function triggered when button is tapped
  final VoidCallback? onTap;

  /// Color of the button border
  final Color? borderColor;

  /// List of colors for gradient background
  final List<Color>? gradientColors;

  /// Color of the button text
  final Color? textColor;

  /// Corner radius of the button
  final double? borderRadius;

  /// Internal padding of the button
  final EdgeInsets? padding;

  /// Size of the button text
  final double? fontSize;

  /// Weight of the button text
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradientColors != null && gradientColors!.isNotEmpty
            ? LinearGradient(
                colors: gradientColors!,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
        border: Border.all(
          color: borderColor ?? appTheme.colorFFFFC6,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 6.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius ?? 6.h),
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            child: Center(
              child: Text(
                text,
                style: TextStyleHelper.instance.textStyle9
                    .copyWith(color: textColor ?? appTheme.blackCustom),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
