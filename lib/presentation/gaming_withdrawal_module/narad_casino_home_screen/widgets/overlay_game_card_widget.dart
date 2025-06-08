import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/overlay_game_card_model.dart';

class OverlayGameCardWidget extends StatelessWidget {
  final OverlayGameCardModel gameModel;
  final bool? showBadge;
  final bool? showTimer;
  final int? badgeCount;
  final String? timerText;
  final String? buttonText;
  final VoidCallback? onTap;

  const OverlayGameCardWidget({
    Key? key,
    required this.gameModel,
    this.showBadge,
    this.showTimer,
    this.badgeCount,
    this.timerText,
    this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120.h,
        height: 120.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: gameModel.backgroundImage?.value ?? '',
              width: 120.h,
              height: 120.h,
              fit: BoxFit.cover,
            ),
            CustomImageView(
              imagePath: gameModel.overlayImage?.value ?? '',
              width: 120.h,
              height: 120.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 3.h,
              left: 15.h,
              child: CustomImageView(
                imagePath: gameModel.gameIcon?.value ?? '',
                height: 99.h,
                width: 91.h,
              ),
            ),
            if (showBadge ?? false)
              Positioned(
                top: 11.h,
                right: 4.h,
                child: Container(
                  width: 16.h,
                  height: 16.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF335,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Center(
                    child: Text(
                      '${badgeCount ?? 0}',
                      style: TextStyleHelper.instance.body12Bold2
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ),
            if (showTimer ?? false) ...[
              Positioned(
                top: 54.h,
                left: 9.h,
                child: CustomImageView(
                  imagePath: gameModel.timerBackgroundImage?.value ?? '',
                  height: 17.h,
                  width: 101.h,
                ),
              ),
              Positioned(
                top: 58.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: gameModel.timerIcon?.value ?? '',
                  height: 12.h,
                  width: 11.h,
                ),
              ),
              Positioned(
                top: 55.h,
                left: 24.h,
                child: Text(
                  timerText ?? '',
                  style: TextStyleHelper.instance.body14Bold2
                      .copyWith(color: appTheme.colorFFFDFF),
                ),
              ),
            ],
            Positioned(
              bottom: 48.h,
              left: 1.h,
              child: CustomImageView(
                imagePath: gameModel.moneyRainImage?.value ?? '',
                height: 22.h,
                width: 118.h,
              ),
            ),
            Positioned(
              bottom: 30.h,
              left: 12.h,
              child: CustomImageView(
                imagePath: gameModel.buttonImage?.value ?? '',
                height: 30.h,
                width: 96.h,
              ),
            ),
            Positioned(
              bottom: 32.h,
              left: 30.h,
              child: Text(
                buttonText ?? 'Receive',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
