import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/menu_item_model.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItemModel model;
  final VoidCallback onTap;

  MenuItemWidget({
    Key? key,
    required this.model,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: appTheme.colorFF282F),
          ),
        ),
        child: Row(
          children: [
            Obx(() => CustomImageView(
                  imagePath: model.icon?.value ?? '',
                  width: 22.h,
                  height: 20.h,
                )),
            SizedBox(width: 16.h),
            Expanded(
              child: Obx(() => Text(
                    model.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  )),
            ),
            Obx(() => (model.hasInstallButton?.value ?? false)
                ? Row(
                    children: [
                      CustomButton(
                        text: 'INSTALALL',
                        variant: CustomButtonVariant.solid,
                        backgroundColor: appTheme.colorFF76CD,
                        width: 80.h,
                        height: 30.h,
                        fontSize: 12.fSize,
                        onPressed: () {},
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgStroke,
                        width: 7.h,
                        height: 13.h,
                      ),
                    ],
                  )
                : CustomImageView(
                    imagePath: ImageConstant.imgStroke,
                    width: 7.h,
                    height: 13.h,
                  )),
          ],
        ),
      ),
    );
  }
}
