import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
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
          Container(
            width: 88.h,
            height: 88.h,
            decoration: BoxDecoration(
              color:
                  gameCard.backgroundColor?.value ?? appTheme.transparentCustom,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                // Main game image
                CustomImageView(
                  imagePath: gameCard.gameImage?.value ?? '',
                  height: 88.h,
                  width: 88.h,
                  fit: BoxFit.cover,
                ),

                // Overlay image if present
                if (gameCard.overlayImage?.value.isNotEmpty == true)
                  Positioned.fill(
                    child: CustomImageView(
                      imagePath: gameCard.overlayImage!.value,
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                // Overlay icon if present
                if (gameCard.overlayIcon?.value.isNotEmpty == true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameCard.overlayIcon!.value,
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),

                // Badge overlay for games without overlay icon
                if (gameCard.overlayIcon?.value.isEmpty == true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 34.h,
                      height: 18.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 4.h),

          // Game title
          SizedBox(
            width: 88.h,
            child: Text(
              gameCard.title?.value ?? '',
              style: TextStyleHelper.instance.body13Bold,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
