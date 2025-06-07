import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/casino_home_controller.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItem;

  GameItemWidget({
    Key? key,
    required this.gameItem,
  }) : super(key: key);

  var controller = Get.find<CasinoHomeController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onGameItemTap(gameItem),
      child: Column(
        children: [
          Container(
            width: 88.h,
            height: 88.h,
            child: Stack(
              children: [
                if (gameItem.hasCustomBackground?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItem.imagePath?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItem.imagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameItem.overlayImagePath?.value != null)
                  CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                if (gameItem.frameImagePath?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.frameImagePath?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  )
                else if (gameItem.hasOverlay?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 18.h,
                      width: 34.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                      ),
                    ),
                  )
                else if (gameItem.hasCustomBackground?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 18.h,
                      width: 34.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            gameItem.gameName?.value ?? '',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body13Bold,
          ),
        ],
      ),
    );
  }
}
