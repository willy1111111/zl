import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/casino_home_controller.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel menuItem;

  SidebarMenuItemWidget({
    Key? key,
    required this.menuItem,
  }) : super(key: key);

  var controller = Get.find<CasinoHomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () {
            int index = controller.sidebarMenuItems.indexOf(menuItem);
            controller.onSidebarMenuTap(index);
          },
          child: Container(
            height: 64.h,
            width: 66.h,
            decoration: BoxDecoration(
              gradient: (menuItem.isSelected?.value ?? false)
                  ? LinearGradient(
                      colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : LinearGradient(
                      colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.h),
                bottomLeft: Radius.circular(8.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: menuItem.iconPath?.value ?? '',
                  height: 36.h,
                  width: 36.h,
                  fit: BoxFit.contain,
                ),
                if (menuItem.title?.value == 'Hot')
                  SizedBox(height: 6.h)
                else
                  SizedBox(height: 0),
                Text(
                  menuItem.title?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold.copyWith(
                      color: (menuItem.isSelected?.value ?? false)
                          ? Color(0xFF25282D)
                          : appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ));
  }
}
