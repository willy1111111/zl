import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../widgets/custom_image_view.dart';

import '../models/golden_egg_ticket_collection_model.dart';

class GoldenEggWidget extends StatelessWidget {
  final GoldenEggModel goldenEgg;
  final VoidCallback? onTap;

  GoldenEggWidget({
    Key? key,
    required this.goldenEgg,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140.h,
        height: 140.h,
        child: Stack(
          children: [
            Transform.scale(
              scale: 0.88,
              child: CustomImageView(
                imagePath: goldenEgg.baseImage?.value ?? '',
                height: 140.h,
                width: 140.h,
              ),
            ),
            Positioned(
              top: 8.h,
              left: 8.h,
              child: CustomImageView(
                imagePath: goldenEgg.eggImage?.value ?? '',
                height: 123.h,
                width: 123.h,
              ),
            ),
            Positioned(
              top: 30.h,
              left: 30.h,
              child: CustomImageView(
                imagePath: goldenEgg.contentImage?.value ?? '',
                height: 80.h,
                width: 64.h,
              ),
            ),
            if (goldenEgg.isCollected?.value ?? false)
              Container(
                width: 140.h,
                height: 140.h,
                decoration: BoxDecoration(
                  color: appTheme.blackCustom.withAlpha(128),
                  borderRadius: BorderRadius.circular(70.h),
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: appTheme.greenCustom,
                    size: 40.h,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
