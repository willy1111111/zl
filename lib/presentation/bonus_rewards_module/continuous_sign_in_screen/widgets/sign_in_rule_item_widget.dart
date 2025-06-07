import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sign_in_rule_item_model.dart';

class SignInRuleItemWidget extends StatelessWidget {
  final SignInRuleItemModel signInRule;

  const SignInRuleItemWidget({
    Key? key,
    required this.signInRule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: CustomImageView(
                imagePath: signInRule.bulletIcon?.value ?? '',
                height: signInRule.bulletIcon?.value.contains('12651') ?? false
                    ? 15.h
                    : signInRule.bulletIcon?.value.contains('12650') ?? false
                        ? 12.h
                        : signInRule.bulletIcon?.value.contains('12649') ??
                                false
                            ? 11.h
                            : 14.h,
                width: signInRule.bulletIcon?.value.contains('12649') ?? false
                    ? 13.h
                    : signInRule.bulletIcon?.value.contains('12647') ?? false
                        ? 12.h
                        : 11.h,
              ),
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: _buildRuleText(),
            ),
          ],
        ));
  }

  Widget _buildRuleText() {
    final ruleText = signInRule.ruleText?.value ?? '';
    final highlightText = signInRule.highlightText?.value;
    final highlightColor = signInRule.highlightColor?.value;

    if (highlightText != null &&
        highlightColor != null &&
        ruleText.contains(highlightText)) {
      final parts = ruleText.split(highlightText);

      return RichText(
        text: TextSpan(
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.2),
          children: [
            TextSpan(text: parts[0]),
            TextSpan(
              text: highlightText,
              style: TextStyleHelper.instance.textStyle21,
            ),
            if (parts.length > 1) TextSpan(text: parts[1]),
          ],
        ),
      );
    }

    return Text(
      ruleText,
      style: TextStyleHelper.instance.body14Bold
          .copyWith(color: appTheme.colorFF8089, height: 1.2),
    );
  }
}
