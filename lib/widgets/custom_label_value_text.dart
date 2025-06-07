import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * A reusable widget for displaying label-value text pairs with customizable styling.
 * Supports different colors, font weights, sizes, and decorations for both label and value portions.
 * 
 * @param labelText - The label text to display (required)
 * @param valueText - The value text to display (required)  
 * @param labelColor - Color for the label text
 * @param valueColor - Color for the value text
 * @param fontSize - Font size for the text (FontSize.small or FontSize.medium)
 * @param fontWeight - Font weight for the text (FontWeight.bold or FontWeight.w900)
 * @param hasUnderline - Whether to underline the value text
 * @param bottomMargin - Bottom margin spacing
 * @param textCapitalization - Text capitalization style
 */
class CustomLabelValueText extends StatelessWidget {
  const CustomLabelValueText({
    Key? key,
    required this.labelText,
    required this.valueText,
    this.labelColor,
    this.valueColor,
    this.fontSize,
    this.fontWeight,
    this.hasUnderline,
    this.bottomMargin,
    this.textCapitalization,
  }) : super(key: key);

  /// The label text to display
  final String labelText;

  /// The value text to display
  final String valueText;

  /// Color for the label text
  final Color? labelColor;

  /// Color for the value text
  final Color? valueColor;

  /// Font size for the text
  final CustomFontSize? fontSize;

  /// Font weight for the text
  final FontWeight? fontWeight;

  /// Whether to underline the value text
  final bool? hasUnderline;

  /// Bottom margin spacing in logical pixels
  final double? bottomMargin;

  /// Text capitalization style
  final TextCapitalization? textCapitalization;

  @override
  Widget build(BuildContext context) {
    final effectiveFontSize = fontSize ?? CustomFontSize.medium;
    final effectiveFontWeight = fontWeight ?? FontWeight.bold;
    final effectiveLabelColor = labelColor ?? appTheme.colorFFF6D1;
    final effectiveValueColor = valueColor ?? appTheme.colorFFFAFC;
    final effectiveBottomMargin = bottomMargin ?? 0;
    final effectiveHasUnderline = hasUnderline ?? false;
    final effectiveTextCapitalization =
        textCapitalization ?? TextCapitalization.none;

    return Container(
      margin: EdgeInsets.only(bottom: effectiveBottomMargin.h),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: _capitalizeText(labelText, effectiveTextCapitalization),
              style: TextStyleHelper.instance.textStyle9.copyWith(
                  fontSize: _getFontSize(effectiveFontSize),
                  height: _getLineHeight(effectiveFontSize)),
            ),
            TextSpan(
              text: _capitalizeText(valueText, effectiveTextCapitalization),
              style: TextStyleHelper.instance.textStyle9.copyWith(
                  color: effectiveValueColor,
                  fontSize: _getFontSize(effectiveFontSize),
                  height: _getLineHeight(effectiveFontSize),
                  decoration:
                      effectiveHasUnderline ? TextDecoration.underline : null),
            ),
          ],
        ),
      ),
    );
  }

  double _getFontSize(CustomFontSize size) {
    switch (size) {
      case CustomFontSize.small:
        return 12.fSize;
      case CustomFontSize.medium:
        return 14.fSize;
    }
  }

  double _getLineHeight(CustomFontSize size) {
    switch (size) {
      case CustomFontSize.small:
        return 1.25; // 15px/12px
      case CustomFontSize.medium:
        return 1.14; // 16px/14px
    }
  }

  String _capitalizeText(String text, TextCapitalization capitalization) {
    switch (capitalization) {
      case TextCapitalization.characters:
        return text.toUpperCase();
      case TextCapitalization.words:
        return text.split(' ').map((word) {
          if (word.isEmpty) return word;
          return word[0].toUpperCase() + word.substring(1).toLowerCase();
        }).join(' ');
      case TextCapitalization.sentences:
        if (text.isEmpty) return text;
        return text[0].toUpperCase() + text.substring(1).toLowerCase();
      case TextCapitalization.none:
      default:
        return text;
    }
  }
}

/// Enum for font size options
enum CustomFontSize {
  small,
  medium,
}
