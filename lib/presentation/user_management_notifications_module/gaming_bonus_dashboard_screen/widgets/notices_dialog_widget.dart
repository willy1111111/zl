import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/gaming_bonus_dashboard_controller.dart';

class NoticesDialogWidget extends StatelessWidget {
  NoticesDialogWidget({Key? key}) : super(key: key);

  var controller = Get.find<GamingBonusDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme.color800000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.h),
                topRight: Radius.circular(12.h),
              ),
            ),
            padding: EdgeInsets.all(20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notices',
                      style: TextStyleHelper.instance.title16Bold.copyWith(
                          color: appTheme.colorFFFFFF,
                          height: 1.12,
                          shadows: [
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 2,
                              color: appTheme.colorFF0000,
                            ),
                          ]),
                    ),
                    GestureDetector(
                      onTap: () => controller.closeNoticesDialog(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup848,
                        height: 16.h,
                        width: 16.h,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // Notice Content
                RichText(
                  text: TextSpan(
                    style: TextStyleHelper.instance.body15Bold
                        .copyWith(height: 1.2),
                    children: [
                      TextSpan(
                        text: 'The bonus statistics are updated as of ',
                        style: TextStyleHelper.instance.textStyle17
                            .copyWith(color: appTheme.colorFF8089),
                      ),
                      TextSpan(
                        text: '23:59 yesterday',
                        style: TextStyleHelper.instance.textStyle17
                            .copyWith(color: appTheme.colorFFFFC6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
