import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameCard;
  final VoidCallback? onTap;

  GameCardWidget({
    Key? key,
    required this.gameCard,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              // Main Game Image
              Container(
                width: 88.h,
                height: 88.h,
                decoration: BoxDecoration(
                  color: gameCard.isCustomBackground?.value ?? false
                      ? Color(0xFF30353A)
                      : null,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: gameCard.isCustomBackground?.value ?? false
                    ? Align(
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: gameCard.gameImage?.value ?? '',
                          height: 20.h,
                          width: 56.h,
                        ),
                      )
                    : CustomImageView(
                        imagePath: gameCard.gameImage?.value ?? '',
                        height: 88.h,
                        width: 88.h,
                        fit: BoxFit.cover,
                      ),
              ),

              // Overlay Image (if present)
              if (gameCard.overlayImage?.value.isNotEmpty ?? false)
                CustomImageView(
                  imagePath: gameCard.overlayImage?.value ?? '',
                  height: 88.h,
                  width: 88.h,
                  fit: BoxFit.cover,
                ),

              // Platform Badge
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 34.h,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: _getPlatformBgColor(),
                    gradient: _getPlatformGradient(),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.h),
                      bottomRight: Radius.circular(6.h),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: gameCard.platformIcon?.value.isNotEmpty ?? false
                      ? Center(
                          child: CustomImageView(
                            imagePath: gameCard.platformIcon?.value ?? '',
                            height: _getPlatformIconHeight(),
                            width: _getPlatformIconWidth(),
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            gameCard.gameName?.value ?? '',
            style: TextStyleHelper.instance.body13BoldNotoSans,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Color? _getPlatformBgColor() {
    if ((gameCard.isGradientPlatform?.value ?? false) ||
        (gameCard.isJdbGradient?.value ?? false) ||
        (gameCard.isPgGradient?.value ?? false)) {
      // Modified: Added null coalescing operators to fix nullable value conditions
      return null;
    }
    return gameCard.platformBg?.value;
  }

  LinearGradient? _getPlatformGradient() {
    if (gameCard.isGradientPlatform?.value ?? false) {
      return LinearGradient(
        begin: Alignment(0.135, 0),
        end: Alignment(1, 1),
        colors: [Color(0xFFFFAA3A), Color(0xFFEB4136)],
      );
    }
    if (gameCard.isJdbGradient?.value ?? false) {
      return LinearGradient(
        begin: Alignment(0.135, 0),
        end: Alignment(1, 1),
        colors: [Color(0xFFFFD200), Color(0xFFFF2E39)],
      );
    }
    if (gameCard.isPgGradient?.value ?? false) {
      return LinearGradient(
        begin: Alignment(0.135, 0),
        end: Alignment(1, 1),
        colors: [Color(0xFF00CCFF), Color(0xFF6313E7)],
      );
    }
    return null;
  }

  double _getPlatformIconHeight() {
    if (gameCard.platformIcon?.value.contains('fastspin') ?? false) {
      return 7.h;
    }
    if (gameCard.platformIcon?.value.contains('platform_24') ?? false) {
      return 11.h;
    }
    if (gameCard.platformIcon?.value.contains('logoaw') ?? false) {
      return 11.h;
    }
    if (gameCard.platformIcon?.value.contains('jdbwhite') ?? false) {
      return 11.h;
    }
    if (gameCard.platformIcon?.value.contains('pgwhite') ?? false) {
      return 14.h;
    }
    return 11.h;
  }

  double _getPlatformIconWidth() {
    if (gameCard.platformIcon?.value.contains('fastspin') ?? false) {
      return 30.h;
    }
    if (gameCard.platformIcon?.value.contains('platform_24') ?? false) {
      return 24.h;
    }
    if (gameCard.platformIcon?.value.contains('logoaw') ?? false) {
      return 26.h;
    }
    if (gameCard.platformIcon?.value.contains('jdbwhite') ?? false) {
      return 20.h;
    }
    if (gameCard.platformIcon?.value.contains('pgwhite') ?? false) {
      return 22.h;
    }
    return 24.h;
  }
}
