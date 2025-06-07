import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/rewards_congratulations_controller.dart';
import '../models/promotional_item_model.dart';

class PromotionalItemWidget extends StatelessWidget {
  final PromotionalItemModel item;

  PromotionalItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  var controller = Get.find<RewardsCongratulationsController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onPromotionalItemTapped(item),
      child: Container(
        height: 36.h,
        child: Row(
          children: [
            // Icon
            CustomImageView(
              imagePath: item.iconPath?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),

            SizedBox(width: 10.h),

            // Title
            Text(
              item.title?.value ?? '',
              style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.21),
            ),

            SizedBox(width: 2.h),

            // Description and highlight text
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: item.description?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFABB6, height: 1.17),
                    ),
                    TextSpan(
                      text: item.highlightText?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF85D4, height: 1.17),
                    ),
                  ],
                ),
              ),
            ),

            // Arrow icon
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
