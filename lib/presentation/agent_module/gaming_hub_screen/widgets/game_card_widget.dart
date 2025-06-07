import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  GameCardWidget({
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
            child: Stack(
              children: [
                if (gameItem.backgroundColor != null)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: gameItem.backgroundColor,
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.imageUrl?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.imageUrl?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameItem.overlayImage != null)
                  CustomImageView(
                    imagePath: gameItem.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 34.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                      gradient: gameItem.gradientColors != null
                          ? LinearGradient(
                              colors: gameItem.gradientColors!,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          : null,
                      color: gameItem.platformColor,
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
                    child: gameItem.platformIcon != null
                        ? Center(
                            child: CustomImageView(
                              imagePath: gameItem.platformIcon?.value ?? '',
                              height: 14.h,
                              width: 30.h,
                              fit: BoxFit.contain,
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 88.h,
            child: Text(
              gameItem.title?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body13Bold,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
