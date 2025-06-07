import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get black => Color(0xFF1E1E1E);
  Color get white => Color(0xFFFFFFFF);

  // Additional Colors
  Color get whiteCustom => Colors.white;
  Color get blackCustom => Colors.black;
  Color get blueCustom => Colors.blue;
  Color get purpleCustom => Colors.purple;
  Color get transparentCustom => Colors.transparent;
  Color get greyCustom => Colors.grey;
  Color get colorFF1E20 => Color(0xFF1E2024);
  Color get colorFF1E5D => Color(0xFF1E5D1C);
  Color get colorFF2A6E => Color(0xFF2A6E1D);
  Color get colorFF5ABF => Color(0xFF5ABF3F);
  Color get colorFFFFFD => Color(0xFFFFFD76);
  Color get colorFF4409 => Color(0xFF440902);
  Color get colorFF8089 => Color(0xFF808994);
  Color get colorFF85D4 => Color(0xFF85D420);
  Color get colorFF4045 => Color(0xFF40454C);
  Color get colorFFFFC6 => Color(0xFFFFC600);
  Color get color300303 => Color(0x30030303);
  Color get color448E8E => Color(0x448E8E8E);
  Color get colorFF8888 => Color(0xFF888888);
  Color get colorFF7373 => Color(0xFF737373);
  Color get colorFFF9E2 => Color(0xFFF9E28A);
  Color get colorFFFEF3 => Color(0xFFFEF3A3);
  Color get colorFFB782 => Color(0xFFB78212);
  Color get colorFF3A1F => Color(0xFF3A1F04);
  Color get colorFFC500 => Color(0xFFC5006C);
  Color get colorFF2528 => Color(0xFF25282D);
  Color get color888888 => Color(0x88888888);
  Color get colorFFFFFB => Color(0xFFFFFBDB);
  Color get colorFFFFC8 => Color(0xFFFFC82F);
  Color get colorFFFFF7 => Color(0xFFFFF727);
  Color get colorFFFF9F => Color(0xFFFF9F00);
  Color get colorFF76CD => Color(0xFF76CD00);
  Color get colorFF478A => Color(0xFF478A03);
  Color get colorFF3634 => Color(0xFF363495);
  Color get colorFFFFF4 => Color(0xFFFFF400);
  Color get colorFFFFC62 => Color(0xFFFFC61E);
  Color get colorFF0727 => Color(0xFF072700);
  Color get colorFF1546 => Color(0xFF154600);
  Color get colorFF0827 => Color(0xFF082701);
  Color get colorFF786A => Color(0xFF786A38);
  Color get colorFFFFF8 => Color(0xFFFFF819);
  Color get colorFFFFFE => Color(0xFFFFFED8);
  Color get colorFFFEF5 => Color(0xFFFEF500);
  Color get colorFFABB6 => Color(0xFFABB6CA);
  Color get colorFFFD20 => Color(0xFFFD2020);
  Color get colorFF3035 => Color(0xFF30353A);
  Color get colorFF4147 => Color(0xFF41474D);
  Color get colorFF41472 => Color(0xFF41474E);
  Color get colorFFFFA0 => Color(0xFFFFA001);
  Color get colorFF363C => Color(0xFF363C41);
  Color get colorFF2B30 => Color(0xFF2B3035);
  Color get colorFFD3F7 => Color(0xFFD3F760);
  Color get colorFF8CF6 => Color(0xFF8CF60A);
  Color get color458E8E => Color(0x458E8E8E);
  Color get colorFF8384 => Color(0xFF838484);
  Color get color5954E7 => Color(0x5954E753);
  Color get colorFFE1E1 => Color(0xFFE1E19F);
  Color get colorFF14BF => Color(0xFF14BFEC);
  Color get colorFF006C => Color(0xFF006CD9);
  Color get colorFF7669 => Color(0xFF7669F0);
  Color get colorFFC89B => Color(0xFFC89BFB);
  Color get colorFF09EC => Color(0xFF09ECAC);
  Color get colorFF1A68 => Color(0xFF1A68FE);
  Color get colorFFEE47 => Color(0xFFEE47AB);
  Color get colorFFFFC7 => Color(0xFFFFC74F);
  Color get color4CC455 => Color(0x4CC455F0);
  Color get color4CCEA9 => Color(0x4CCEA931);
  Color get colorFFE6B5 => Color(0xFFE6B572);
  Color get colorFFA641 => Color(0xFFA641FF);
  Color get colorFF9DA6 => Color(0xFF9DA6B1);
  Color get color4C1014 => Color(0x4C101438);
  Color get colorFF9EAA => Color(0xFF9EAAB9);
  Color get colorFF009D => Color(0xFF009D80);
  Color get colorFF161D => Color(0xFF161D1E);
  Color get colorFFC498 => Color(0xFFC498FA);
  Color get colorFFFFD6 => Color(0xFFFFD600);
  Color get colorFFFFAA => Color(0xFFFFAA3A);
  Color get colorFFEB41 => Color(0xFFEB4136);
  Color get colorFFFFCC => Color(0xFFFFCC00);
  Color get colorFFFFD2 => Color(0xFFFFD200);
  Color get colorFFFF2E => Color(0xFFFF2E39);
  Color get colorFF00CC => Color(0xFF00CCFF);
  Color get colorFF6313 => Color(0xFF6313E7);
  Color get colorFF2223 => Color(0xFF222327);
  Color get colorFF242A => Color(0xFF242A30);
  Color get colorFFADF8 => Color(0xFFADF835);
  Color get colorFF83CF => Color(0xFF83CF22);
  Color get colorFF3C7A => Color(0xFF3C7A0B);
  Color get colorFF6199 => Color(0xFF61991B);
  Color get colorFF232B => Color(0xFF232B32);
  Color get colorB216D9 => Color(0xB216D9C1);
  Color get colorB21051 => Color(0xB210517F);
  Color get color4C27D8 => Color(0x4C27D8C5);
  Color get color4C0F4E => Color(0x4C0F4E6E);
  Color get colorFF12B4 => Color(0xFF12B4A1);
  Color get colorFF2B45 => Color(0xFF2B450B);
  Color get colorFF233F => Color(0xFF233F00);
  Color get colorFF2B452 => Color(0xFF2B450A);
  Color get color4D1817 => Color(0x4D18172F);
  Color get colorFFFFFB2 => Color(0xFFFFFBD4);
  Color get colorFFEEB8 => Color(0xFFEEB819);
  Color get colorFF9C4D => Color(0xFF9C4D00);
  Color get colorFFA7FF => Color(0xFFA7FFB7);
  Color get colorFF0A9B => Color(0xFF0A9B57);
  Color get colorFF003D => Color(0xFF003D24);
  Color get colorFF0064 => Color(0xFF00643B);
  Color get colorFFEFF7 => Color(0xFFEFF707);
  Color get colorFF54D8 => Color(0xFF54D896);
  Color get colorFF0963 => Color(0xFF09633F);
  Color get colorFF8CD1 => Color(0xFF8CD135);
  Color get colorFF1E202 => Color(0xFF1E2024);
  Color get color4CD869 => Color(0x4CD869FF);
  Color get colorFF4891 => Color(0xFF4891FF);
  Color get colorFFB880 => Color(0xFFB880FB);
  Color get colorFFFF9E => Color(0xFFFF9E00);
  Color get colorFF0C3B => Color(0xFF0C3BCE);
  Color get colorFF3AC4 => Color(0xFF3AC4FF);
  Color get colorFF3617 => Color(0xFF3617E8);
  Color get colorFF806A => Color(0xFF806AFF);
  Color get colorB2FFEA => Color(0xB2FFEA74);
  Color get colorB2AE71 => Color(0xB2AE7100);
  Color get color4CFFE1 => Color(0x4CFFE100);
  Color get color4CFFA5 => Color(0x4CFFA500);
  Color get colorFFFFFF => Color(0xFFFFFFFF);
  Color get colorFFEE8A => Color(0xFFEE8A00);
  Color get colorFF3842 => Color(0xFF38424B);
  Color get colorFF849F => Color(0xFF849FF9);
  Color get colorFFFFF72 => Color(0xFFFFF7A7);
  Color get colorFF0000 => Color(0xFF000000);
  Color get colorB2E6B5 => Color(0xB2E6B572);
  Color get colorFFFFD5 => Color(0xFFFFD503);
  Color get colorFFF4FD => Color(0xFFF4FD70);
  Color get colorFFF2A0 => Color(0xFFF2A001);
  Color get colorFFC0CD => Color(0xFFC0CDDD);
  Color get colorFFC0CD2 => Color(0xFFC0CDDE);
  Color get colorFFD9D9 => Color(0xFFD9D9D9);
  Color get colorFFFFD8 => Color(0xFFFFD800);
  Color get colorFF8FFF => Color(0xFF8FFF00);
  Color get colorFF0029 => Color(0xFF00294D);
  Color get color4C3375 => Color(0x4C3375FF);
  Color get color4C3134 => Color(0x4C3134CE);
  Color get colorB23C97 => Color(0xB23C97FF);
  Color get colorFF1997 => Color(0xFF1997FF);
  Color get colorFF1B1C => Color(0xFF1B1C1F);
  Color get colorFF6BA5 => Color(0xFF6BA519);
  Color get colorFF14BF2 => Color(0xFF14BFEC);
  Color get colorFF006C2 => Color(0xFF006CD9);
  Color get colorFF1112 => Color(0xFF111214);
  Color get colorFF52D1 => Color(0xFF52D1C6);
  Color get colorFF2A2D => Color(0xFF2A2D35);
  Color get colorFF1A1D => Color(0xFF1A1D23);

  // Color Shades - Each shade has its own dedicated constant
  Color get grey200 => Colors.grey.shade200;
  Color get grey100 => Colors.grey.shade100;
}
