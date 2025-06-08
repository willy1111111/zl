import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/user_dashboard_controller.dart';
import '../models/menu_option_item_model.dart';

class MenuOptionItemWidget extends StatelessWidget {
  final MenuOptionItemModel menuOptionItemModel;

  MenuOptionItemWidget({
    Key? key,
    required this.menuOptionItemModel,
  }) : super(key: key);

  var controller = Get.find<UserDashboardController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onMenuOptionPressed(menuOptionItemModel),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: menuOptionItemModel.icon?.value ?? '',
              height: 20.h,
              width: 22.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Text(
                menuOptionItemModel.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
            if (menuOptionItemModel.hasInstallButton?.value ?? false)
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: CustomButton(
                  text: 'INSTALALL',
                  variant: CustomButtonVariant.solid,
                  isGradientInstall: true,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  height: 32.h,
                  width: 80.h,
                  onPressed: () => controller.onInstallButtonPressed(),
                ),
              ),
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
