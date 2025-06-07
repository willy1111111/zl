import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sign_in_rule_item_model.dart';

class SignInRuleItem extends StatelessWidget {
  final SignInRuleItemModel ruleData;

  const SignInRuleItem({
    Key? key,
    required this.ruleData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: CustomImageView(
            imagePath: ruleData.bulletIcon?.value ?? '',
            height: (ruleData.bulletIconHeight?.value ?? 12).toDouble().h,
            width: (ruleData.bulletIconWidth?.value ?? 11).toDouble().h,
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: ruleData.ruleText?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
                if (ruleData.highlightText?.value.isNotEmpty ?? false)
                  TextSpan(
                    text: ruleData.highlightText?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color:
                            Color(ruleData.highlightColor?.value ?? 0xFF51A0FF),
                        height: 1.2),
                  ),
                if (ruleData.additionalText?.value.isNotEmpty ?? false)
                  TextSpan(
                    text: ruleData.additionalText?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089, height: 1.2),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
