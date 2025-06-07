import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/rewards_congratulations_controller.dart';
import '../models/settings_item_model.dart';

class SettingsItemWidget extends StatelessWidget {
  final SettingsItemModel item;

  SettingsItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  var controller = Get.find<RewardsCongratulationsController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onSettingsItemTapped(item),
      child: Container(
        height: (item.showInstallButton?.value ?? false) ? 40.h : 30.h,
        child: Row(
          children: [
            // Icon
            CustomImageView(
              imagePath: item.iconPath?.value ?? '',
              height: 22.h,
              width: 22.h,
            ),

            SizedBox(width: 12.h),

            // Title
            Expanded(
              child: Text(
                item.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
              ),
            ),

            // Install button (if needed)
            if (item.showInstallButton?.value ?? false)
              GestureDetector(
                onTap: () => controller.onInstallButtonPressed(),
                child: Container(
                  width: 80.h,
                  height: 30.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF76CD01), Color(0xFF498D03)],
                    ),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Center(
                    child: Text(
                      'INSTALALL',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.17),
                    ),
                  ),
                ),
              ),

            SizedBox(width: 12.h),

            // Arrow icon (if needed)
            if (item.showArrow?.value ?? false)
              CustomImageView(
                imagePath: ImageConstant.imgStroke,
                height: 13.h,
                width: 7.h,
              ),
          ],
        ),
      ),
    );
  }
}
