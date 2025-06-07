import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/promotional_feature_item_model.dart';

class PromotionalFeatureItem extends StatelessWidget {
  final PromotionalFeatureItemModel promotionalFeatureModel;
  final VoidCallback? onTap;

  PromotionalFeatureItem({
    Key? key,
    required this.promotionalFeatureModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          border: (promotionalFeatureModel.showBorder?.value ?? false)
              ? Border(bottom: BorderSide(color: appTheme.colorFF292F))
              : null,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: promotionalFeatureModel.icon?.value ?? '',
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promotionalFeatureModel.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold2,
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      children: _buildTextSpans(),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeBlueGray700,
              width: 7.h,
              height: 13.h,
            ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> _buildTextSpans() {
    String subtitle = promotionalFeatureModel.subtitle?.value ?? '';
    String highlightText = promotionalFeatureModel.highlightText?.value ?? '';

    if (highlightText.isEmpty) {
      return [
        TextSpan(
          text: subtitle,
          style: TextStyleHelper.instance.body12Bold2
              .copyWith(color: appTheme.colorFFABB6, height: 1.2),
        ),
      ];
    }

    List<TextSpan> spans = [];
    List<String> parts = subtitle.split(highlightText);

    for (int i = 0; i < parts.length; i++) {
      if (parts[i].isNotEmpty) {
        spans.add(
          TextSpan(
            text: parts[i],
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFFABB6, height: 1.2),
          ),
        );
      }

      if (i < parts.length - 1) {
        spans.add(
          TextSpan(
            text: highlightText,
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFF85D4, height: 1.2),
          ),
        );
      }
    }

    return spans;
  }
}
