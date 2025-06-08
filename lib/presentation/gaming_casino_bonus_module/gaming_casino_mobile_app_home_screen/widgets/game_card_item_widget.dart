import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameItem;
  final VoidCallback? onTap;

  GameCardItemWidget({
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
                if (gameItem.isSpecial?.value == true)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.backgroundImage?.value ?? '',
                        width: 56.h,
                        height: 20.h,
                        radius: BorderRadius.circular(4.h),
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.backgroundImage?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),
                if (gameItem.overlayImage?.value.isNotEmpty == true)
                  CustomImageView(
                    imagePath: gameItem.overlayImage?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),
                if (gameItem.playIcon?.value.isNotEmpty == true)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.playIcon?.value ?? '',
                      width: 34.h,
                      height: 18.h,
                    ),
                  )
                else
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 34.h,
                      height: 18.h,
                      decoration: BoxDecoration(
                        color: gameItem.isSpecial?.value == true
                            ? Color(0xFF41474E)
                            : appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            gameItem.title?.value ?? '',
            style: TextStyleHelper.instance.body13BoldNotoSans,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
