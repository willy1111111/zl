import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sign_in_rule_item_model.dart';

class SignInRuleItemWidget extends StatelessWidget {
  final SignInRuleItemModel signInRuleItemModel;

  SignInRuleItemWidget({
    Key? key,
    required this.signInRuleItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: signInRuleItemModel.ruleIcon?.value ?? '',
              height: 12.h,
              width: 12.h,
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: signInRuleItemModel.ruleText?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF8089, height: 1.2),
                    ),
                    if (signInRuleItemModel
                            .highlightedNumber?.value.isNotEmpty ==
                        true)
                      TextSpan(
                        text:
                            signInRuleItemModel.highlightedNumber?.value ?? '',
                        style: TextStyleHelper.instance.body14Bold.copyWith(
                            color: (signInRuleItemModel.isRedHighlight?.value ??
                                    false)
                                ? Color(0xFFF65252)
                                : appTheme.colorFF51A0,
                            height: 1.2),
                      ),
                    if (signInRuleItemModel.remainingText?.value.isNotEmpty ==
                        true)
                      TextSpan(
                        text: signInRuleItemModel.remainingText?.value ?? '',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFF8089, height: 1.2),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
