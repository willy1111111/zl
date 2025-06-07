import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/rule_model.dart';

class RuleItemWidget extends StatelessWidget {
  final RuleModel ruleModel;

  RuleItemWidget({
    Key? key,
    required this.ruleModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: CustomImageView(
                imagePath: ruleModel.bulletIcon?.value ?? '',
                width: _getBulletWidth(),
                height: _getBulletHeight(),
              ),
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: ruleModel.hasHighlight?.value ?? false
                  ? RichText(
                      text: TextSpan(
                        style: TextStyleHelper.instance.body14Bold.copyWith(
                            color: appTheme.colorFF8089, height: 1.14),
                        children: _buildHighlightedText(),
                      ),
                    )
                  : Text(
                      ruleModel.ruleText?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF8089, height: 1.14),
                    ),
            ),
          ],
        ));
  }

  double _getBulletWidth() {
    String iconPath = ruleModel.bulletIcon?.value ?? '';
    if (iconPath.contains('12650')) return 11.h;
    if (iconPath.contains('12649')) return 13.h;
    if (iconPath.contains('12651')) return 11.h;
    if (iconPath.contains('12647')) return 12.h;
    return 12.h;
  }

  double _getBulletHeight() {
    String iconPath = ruleModel.bulletIcon?.value ?? '';
    if (iconPath.contains('12650')) return 12.h;
    if (iconPath.contains('12649')) return 11.h;
    if (iconPath.contains('12651')) return 15.h;
    if (iconPath.contains('12647')) return 14.h;
    return 12.h;
  }

  List<TextSpan> _buildHighlightedText() {
    String text = ruleModel.ruleText?.value ?? '';
    String highlight = ruleModel.highlightText?.value ?? '';

    List<TextSpan> spans = [];
    int lastIndex = 0;

    while (true) {
      int index = text.indexOf(highlight, lastIndex);
      if (index == -1) {
        if (lastIndex < text.length) {
          spans.add(TextSpan(text: text.substring(lastIndex)));
        }
        break;
      }

      if (index > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, index)));
      }

      spans.add(TextSpan(
        text: highlight,
        style: TextStyleHelper.instance.textStyle21
            .copyWith(color: appTheme.colorFF51A0),
      ));

      lastIndex = index + highlight.length;
    }

    return spans;
  }
}
