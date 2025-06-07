import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomLevelDisplay - A reusable widget for displaying user level, VIP status, or reward information
 * 
 * This component creates a horizontal layout with a label, icon, and value text.
 * Commonly used for showing VIP levels, expected rewards, or status indicators.
 * 
 * @param labelText - The descriptive text shown on the left (e.g., "Your level：")
 * @param iconPath - Path to the icon/image to display
 * @param valueText - The value or status text shown on the right (e.g., "V8", "453")
 * @param labelTextStyle - Custom text style for the label
 * @param valueTextStyle - Custom text style for the value
 * @param iconSize - Size of the icon (width and height)
 * @param spacing - Horizontal spacing between elements
 * @param marginBottom - Bottom margin for the entire component
 * @param iconFit - How the icon should fit within its bounds
 */
class CustomLevelDisplay extends StatelessWidget {
  const CustomLevelDisplay({
    Key? key,
    required this.labelText,
    required this.iconPath,
    required this.valueText,
    this.labelTextStyle,
    this.valueTextStyle,
    this.iconSize,
    this.spacing,
    this.marginBottom,
    this.iconFit,
  }) : super(key: key);

  /// The descriptive text shown on the left
  final String labelText;

  /// Path to the icon/image to display
  final String iconPath;

  /// The value or status text shown on the right
  final String valueText;

  /// Custom text style for the label
  final TextStyle? labelTextStyle;

  /// Custom text style for the value
  final TextStyle? valueTextStyle;

  /// Size of the icon (width and height)
  final double? iconSize;

  /// Horizontal spacing between elements
  final double? spacing;

  /// Bottom margin for the entire component
  final double? marginBottom;

  /// How the icon should fit within its bounds
  final BoxFit? iconFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom ?? 8.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            labelText,
            style: labelTextStyle ?? TextStyleHelper.instance.body14Black,
          ),
          SizedBox(width: spacing ?? 8.h),
          CustomImageView(
            imagePath: iconPath,
            height: iconSize ?? 24.h,
            width: iconSize ?? 24.h,
            fit: iconFit ?? BoxFit.contain,
          ),
          SizedBox(width: spacing ?? 8.h),
          Text(
            valueText,
            style: valueTextStyle ??
                TextStyleHelper.instance.body14Black
                    .copyWith(color: appTheme.colorFFFFC6),
          ),
        ],
      ),
    );
  }
}
