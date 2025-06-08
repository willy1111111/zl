import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/ticket_claim_info_model.dart';

class GameItemWidget extends StatelessWidget {
  final TicketClaimInfoGameItemModel gameItem;
  final VoidCallback? onTap;

  GameItemWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 88.h,
            height: 88.h,
            decoration: BoxDecoration(
              color:
                  gameItem.backgroundColor?.value ?? appTheme.transparentCustom,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                // Base Game Image
                if (gameItem.gameType?.value != GameType.logoStyle)
                  CustomImageView(
                    imagePath: gameItem.gameImagePath?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Logo for logoStyle type
                if (gameItem.gameType?.value == GameType.logoStyle)
                  Center(
                    child: CustomImageView(
                      imagePath: gameItem.gameImagePath?.value ?? '',
                      width: 56.h,
                      height: 20.h,
                    ),
                  ),

                // Baccarat Image (overlay)
                if (gameItem.baccaratImagePath?.value != null)
                  CustomImageView(
                    imagePath: gameItem.baccaratImagePath!.value,
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),

                // Special Effect Image
                if (gameItem.specialEffectImagePath?.value != null)
                  CustomImageView(
                    imagePath: gameItem.specialEffectImagePath!.value,
                    width: 88.h,
                    height: 88.h,
                  ),

                // Overlay Image (always on top)
                if (gameItem.overlayImagePath?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.overlayImagePath!.value,
                      width: 18.h,
                      height: 34.h,
                    ),
                  ),

                // Progress Bar
                if (gameItem.gameType?.value == GameType.withProgressBar)
                  Positioned(
                    top: 55.h,
                    right: 32.h,
                    child: Container(
                      width: 1.h,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2548,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            blurRadius: 4.h,
                            offset: Offset(0, 4.h),
                          ),
                        ],
                      ),
                    ),
                  ),

                // Badge
                if (gameItem.gameType?.value == GameType.withBadge &&
                    gameItem.badgeCount?.value != null)
                  Positioned(
                    top: 64.h,
                    right: 14.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          gameItem.badgeCount!.value.toString(),
                          style: TextStyleHelper.instance.body12Black
                              .copyWith(letterSpacing: 2.h),
                        ),
                      ),
                    ),
                  ),

                // Red Dot
                if (gameItem.gameType?.value == GameType.withRedDot)
                  Positioned(
                    top: 90.h,
                    right: 51.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 8.h),

          // Game Title
          Text(
            gameItem.title?.value ?? '',
            style: TextStyleHelper.instance.body13Bold
                .copyWith(color: appTheme.colorFF8089, shadows: [
              Shadow(
                color: appTheme.blackCustom,
                blurRadius: 2.h,
                offset: Offset(0, 1.h),
              ),
            ]),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
