import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/user_dashboard_controller.dart';
import '../models/promotional_feature_item_model.dart';

class PromotionalFeatureItemWidget extends StatelessWidget {
  final PromotionalFeatureItemModel promotionalFeatureItemModel;

  PromotionalFeatureItemWidget({
    Key? key,
    required this.promotionalFeatureItemModel,
  }) : super(key: key);

  var controller = Get.find<UserDashboardController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          controller.onPromotionalFeaturePressed(promotionalFeatureItemModel),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: promotionalFeatureItemModel.icon?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promotionalFeatureItemModel.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold,
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      text:
                          promotionalFeatureItemModel.description?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFABB6, height: 1.17),
                      children: [
                        TextSpan(
                          text: promotionalFeatureItemModel
                                  .highlightText?.value ??
                              '',
                          style: TextStyleHelper.instance.textStyle17
                              .copyWith(color: appTheme.colorFF85D4),
                        ),
                      ],
                    ),
                  ),
                ],
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
