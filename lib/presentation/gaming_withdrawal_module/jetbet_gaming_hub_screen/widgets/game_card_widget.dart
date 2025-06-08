import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameCard;
  final VoidCallback? onTap;

  const GameCardWidget({
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
                CustomImageView(
                  imagePath: gameCard.gameImage?.value ?? '',
                  height: 88.h,
                  width: 88.h,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(4.h),
                ),
                if (gameCard.overlayImage?.value.isNotEmpty == true)
                  CustomImageView(
                    imagePath: gameCard.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(4.h),
                  ),
                if (gameCard.overlayIcon?.value.isNotEmpty == true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameCard.overlayIcon?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),
                if (gameCard.gameImage?.value == ImageConstant.imgLogowj931)
                  Positioned(
                    left: 16.h,
                    top: 34.h,
                    child: CustomImageView(
                      imagePath: gameCard.gameImage?.value ?? '',
                      height: 20.h,
                      width: 56.h,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            gameCard.title?.value ?? '',
            style: TextStyleHelper.instance.body13BoldNotoSans,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
