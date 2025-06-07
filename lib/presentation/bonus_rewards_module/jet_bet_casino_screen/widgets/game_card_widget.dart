import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameModel;
  final VoidCallback? onTap;

  const GameCardWidget({
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
            width: 88.h,
            height: 88.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.h),
              color: gameModel.backgroundColor?.value,
            ),
            child: Stack(
              children: [
                if (gameModel.imagePath?.value != null)
                  CustomImageView(
                    imagePath: gameModel.imagePath?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameModel.overlayImagePath?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameModel.overlayImagePath?.value ?? '',
                      width: 34.h,
                      height: 18.h,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 88.h,
            child: Text(
              gameModel.title?.value ?? '',
              style: TextStyleHelper.instance.body13Bold,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
