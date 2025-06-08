import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/promotional_item_model.dart';

class PromotionalItemWidget extends StatelessWidget {
  final PromotionalItemModel promotionalItemModel;
  final VoidCallback? onTap;

  PromotionalItemWidget({
    Key? key,
    required this.promotionalItemModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: promotionalItemModel.icon?.value ?? '',
                    height: 36.h,
                    width: 36.h,
                  ),
                  SizedBox(width: 12.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          promotionalItemModel.title?.value ?? '',
                          style: TextStyleHelper.instance.body14Bold2,
                        ),
                        if ((promotionalItemModel.description?.value ?? '')
                                .isNotEmpty ||
                            (promotionalItemModel.highlightText?.value ?? '')
                                .isNotEmpty)
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      promotionalItemModel.description?.value ??
                                          '',
                                  style: TextStyleHelper.instance.body12Bold2
                                      .copyWith(
                                          color: appTheme.colorFFABB6,
                                          height: 1.2),
                                ),
                                TextSpan(
                                  text: promotionalItemModel
                                          .highlightText?.value ??
                                      '',
                                  style: TextStyleHelper.instance.body12Bold2
                                      .copyWith(
                                          color: appTheme.colorFF85D4,
                                          height: 1.2),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeBlueGray70001,
              height: 7.h,
              width: 13.h,
            ),
          ],
        ),
      ),
    );
  }
}
