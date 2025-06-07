import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameModel;
  final VoidCallback? onTap;

  GameCardWidget({
    Key? key,
    required this.gameModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 88.h,
            width: 88.h,
            child: Stack(
              children: [
                if (gameModel.isCustomBackground?.value ?? false)
                  Container(
                    height: 88.h,
                    width: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameModel.imagePath?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameModel.imagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameModel.overlayImage?.value.isNotEmpty ?? false)
                  CustomImageView(
                    imagePath: gameModel.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomImageView(
                    imagePath: gameModel.frameImage?.value ?? '',
                    height: 18.h,
                    width: 34.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: 88.h,
            child: Text(
              gameModel.title?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body13Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }
}
