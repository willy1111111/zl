import 'package:flutter/material.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../../../core/app_export.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameModel;
  final VoidCallback? onTap;

  GameItemWidget({
    Key? key,
    required this.gameModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 88.h,
        height: 88.h,
        decoration: BoxDecoration(
          color: gameModel.backgroundColor?.value ?? appTheme.transparentCustom,
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: gameModel.imagePath?.value ?? '',
              height: 88.h,
              width: 88.h,
              fit: BoxFit.cover,
            ),
            if (gameModel.overlayImagePath?.value.isNotEmpty ?? false)
              CustomImageView(
                imagePath: gameModel.overlayImagePath?.value ?? '',
                height: 88.h,
                width: 88.h,
                fit: BoxFit.cover,
              ),
            if (gameModel.iconPath?.value.isNotEmpty ?? false)
              Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: gameModel.iconPath?.value ?? '',
                  height: 18.h,
                  width: 34.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
