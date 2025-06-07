import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * CustomTextLink - A reusable text link component with customizable styling
 * 
 * This component renders a clickable text link with underline decoration.
 * It supports different text colors, alignments, and spacing options.
 * 
 * @param text - The text content to display
 * @param onTap - Callback function executed when the link is tapped
 * @param textColor - Color of the text link
 * @param textAlign - Alignment of the text within its container
 * @param margin - External spacing around the component
 * @param fontSize - Size of the text font
 */
class CustomTextLink extends StatelessWidget {
  const CustomTextLink({
    Key? key,
    required this.text,
    this.onTap,
    this.textColor,
    this.textAlign,
    this.margin,
    this.fontSize,
  }) : super(key: key);

  /// The text content to display in the link
  final String text;

  /// Callback function triggered when the link is tapped
  final VoidCallback? onTap;

  /// Color of the text link
  final Color? textColor;

  /// Alignment of the text within its container
  final TextAlign? textAlign;

  /// External spacing around the component
  final EdgeInsets? margin;

  /// Size of the text font
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          textAlign: textAlign ?? TextAlign.center,
          style: TextStyleHelper.instance.body12.copyWith(
              color: textColor ?? appTheme.colorFF009D,
              fontSize: (fontSize ?? 14),
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
