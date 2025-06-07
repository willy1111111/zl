import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * CustomHighlightText - A reusable text component that displays text with highlighted portions
 * 
 * This component allows you to create text with different styling for different portions,
 * commonly used for displaying bonus information, promotional text, or any text that needs
 * visual emphasis on specific parts.
 * 
 * @param mainText - The primary text content
 * @param highlightText - The text portion that should be highlighted
 * @param mainTextColor - Color for the main text portion
 * @param highlightTextColor - Color for the highlighted text portion
 * @param fontSize - Font size for the entire text
 * @param fontWeight - Font weight for the text
 * @param textAlign - Text alignment (left, center, right)
 * @param isCapitalized - Whether to capitalize the highlighted text
 * @param marginTop - Top margin for the component
 * @param lineHeight - Line height for the text
 */
class CustomHighlightText extends StatelessWidget {
  const CustomHighlightText({
    Key? key,
    required this.mainText,
    required this.highlightText,
    this.mainTextColor,
    this.highlightTextColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.isCapitalized,
    this.marginTop,
    this.lineHeight,
  }) : super(key: key);

  /// The primary text content
  final String mainText;

  /// The text portion that should be highlighted
  final String highlightText;

  /// Color for the main text portion
  final Color? mainTextColor;

  /// Color for the highlighted text portion
  final Color? highlightTextColor;

  /// Font size for the entire text
  final double? fontSize;

  /// Font weight for the text
  final FontWeight? fontWeight;

  /// Text alignment (left, center, right)
  final TextAlign? textAlign;

  /// Whether to capitalize the highlighted text
  final bool? isCapitalized;

  /// Top margin for the component
  final double? marginTop;

  /// Line height for the text
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    final effectiveMainTextColor = mainTextColor ?? Color(0xFF9EAAB9);
    final effectiveHighlightTextColor = highlightTextColor ?? Color(0xFFFFC600);
    final effectiveFontSize = fontSize ?? 12.fSize;
    final effectiveFontWeight = fontWeight ?? FontWeight.normal;
    final effectiveTextAlign = textAlign ?? TextAlign.left;
    final effectiveIsCapitalized = isCapitalized ?? false;
    final effectiveMarginTop = marginTop ?? 0.h;
    final effectiveLineHeight = lineHeight ?? 1.0;

    return Container(
      margin: EdgeInsets.only(top: effectiveMarginTop),
      child: RichText(
        textAlign: effectiveTextAlign,
        text: TextSpan(
          style: TextStyleHelper.instance.textStyle17
              .copyWith(height: effectiveLineHeight),
          children: [
            TextSpan(
              text: mainText,
              style: TextStyleHelper.instance.textStyle17,
            ),
            TextSpan(
              text: effectiveIsCapitalized
                  ? highlightText.toUpperCase()
                  : highlightText,
              style: TextStyleHelper.instance.textStyle17,
            ),
          ],
        ),
      ),
    );
  }
}
