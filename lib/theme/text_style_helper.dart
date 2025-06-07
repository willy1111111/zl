import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Display Styles
  // Large text styles typically used for headers and hero elements

  TextStyle get display40Bold => TextStyle(
        fontSize: 40.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline32Bold => TextStyle(
        fontSize: 32.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFFFFC6,
      );

  TextStyle get headline30BoldArial => TextStyle(
        fontSize: 30.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get headline28 => TextStyle(
        fontSize: 28.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get headline26 => TextStyle(
        fontSize: 26.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get headline26Bold => TextStyle(
        fontSize: 26.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get headline26BoldArial => TextStyle(
        fontSize: 26.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get headline24Black => TextStyle(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w900,
        color: appTheme.colorFFFFF8,
      );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title22BoldArial => TextStyle(
        fontSize: 22.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get title22Bold => TextStyle(
        fontSize: 22.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get title22Black => TextStyle(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w900,
        color: appTheme.whiteCustom,
      );

  TextStyle get title21ExtraBold => TextStyle(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w800,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20BlackArial => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get title20RegularRoboto => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get title20Black => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
        color: appTheme.colorFFFFC6,
      );

  TextStyle get title19Black => TextStyle(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w900,
      );

  TextStyle get title19Bold => TextStyle(
        fontSize: 19.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFF8FFF,
      );

  TextStyle get title19BlackArial => TextStyle(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w900,
        fontFamily: 'Arial',
        color: appTheme.colorFFFFD5,
      );

  TextStyle get title19BoldArial => TextStyle(
        fontSize: 19.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
      );

  TextStyle get title18Bold => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get title18BoldSFProText => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'SF Pro Text',
      );

  TextStyle get title18BoldArial => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get title17ExtraBold => TextStyle(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
        color: appTheme.colorFFFFFD,
      );

  TextStyle get title16MediumArial => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Arial',
        color: appTheme.colorFF8089,
      );

  TextStyle get title16Arial => TextStyle(
        fontSize: 16.fSize,
        fontFamily: 'Arial',
      );

  TextStyle get title16 => TextStyle(
        fontSize: 16.fSize,
        color: appTheme.colorFFFFC6,
      );

  TextStyle get title16Bold => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.bold,
      );

  TextStyle get title16Black => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );

  TextStyle get title16BoldArial => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.colorFF003D,
      );

  // Body Styles
  // Standard text styles for body content

  TextStyle get body15BoldArial => TextStyle(
        fontSize: 15.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get body15Bold => TextStyle(
        fontSize: 15.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get body14Bold => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.bold,
      );

  TextStyle get body14 => TextStyle(
        fontSize: 14.fSize,
      );

  TextStyle get body14Arial => TextStyle(
        fontSize: 14.fSize,
        fontFamily: 'Arial',
        color: appTheme.colorFF85D4,
      );

  TextStyle get body13Bold => TextStyle(
        fontSize: 13.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFF8089,
      );

  TextStyle get body13BoldArial => TextStyle(
        fontSize: 13.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.colorFFC0CD,
      );

  TextStyle get body12 => TextStyle(
        fontSize: 12.fSize,
      );

  TextStyle get body12Bold => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.bold,
      );

  TextStyle get body12Black => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w900,
        color: appTheme.colorFFFFC6,
      );

  TextStyle get body12BoldArial => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.colorFF0064,
      );

  TextStyle get body14BoldArial => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  TextStyle get body12Medium => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.colorFF8089,
      );

  TextStyle get body12BoldSFProText => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'SF Pro Text',
      );

  TextStyle get body12Arial => TextStyle(
        fontSize: 12.fSize,
        fontFamily: 'Arial',
        color: appTheme.whiteCustom,
      );

  // Label Styles
  // Small text styles for labels, captions, and hints

  TextStyle get label10 => TextStyle(
        fontSize: 10.fSize,
      );

  TextStyle get label10Bold => TextStyle(
        fontSize: 10.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get label11Bold => TextStyle(
        fontSize: 11.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFFFFD8,
      );

  TextStyle get label8Bold => TextStyle(
        fontSize: 8.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFF3A1F,
      );

  // Other Styles
  // Miscellaneous text styles without specified font size

  TextStyle get textStyle17 => TextStyle();

  TextStyle get bodyTextMedium => TextStyle(
        fontWeight: FontWeight.w500,
        color: appTheme.colorFF8089,
      );

  TextStyle get bodyTextBold => TextStyle(
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodyTextBoldArial => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Arial',
      );
}
