import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sign_in_rule_item_model.dart';

class SignInRuleItemWidget extends StatelessWidget {
  final SignInRuleItemModel signInRuleItemModel;
  final int index;

  const SignInRuleItemWidget({
    Key? key,
    required this.signInRuleItemModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: index < 4 ? 8.h : 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: CustomImageView(
              imagePath: signInRuleItemModel.pointIcon?.value ?? '',
              height: _getIconHeight(index),
              width: _getIconWidth(index),
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: _buildRuleText(),
          ),
        ],
      ),
    );
  }

  double _getIconHeight(int index) {
    switch (index) {
      case 0:
        return 12.h;
      case 1:
        return 11.h;
      case 2:
        return 15.h;
      case 3:
      case 4:
        return 14.h;
      default:
        return 12.h;
    }
  }

  double _getIconWidth(int index) {
    switch (index) {
      case 0:
        return 11.h;
      case 1:
        return 13.h;
      case 2:
        return 11.h;
      case 3:
      case 4:
        return 12.h;
      default:
        return 11.h;
    }
  }

  Widget _buildRuleText() {
    if (signInRuleItemModel.highlightText?.value.isNotEmpty == true) {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: signInRuleItemModel.ruleText?.value ?? '',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089, height: 1.2),
            ),
            TextSpan(
              text: signInRuleItemModel.highlightText?.value ?? '',
              style: TextStyleHelper.instance.body14BoldArial.copyWith(
                  color: signInRuleItemModel.highlightColor?.value ??
                      Color(0xFF51A0FF),
                  height: 1.2),
            ),
            if (signInRuleItemModel.suffixText?.value.isNotEmpty == true)
              TextSpan(
                text: signInRuleItemModel.suffixText?.value ?? '',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF8089, height: 1.2),
              ),
          ],
        ),
      );
    }

    return Text(
      signInRuleItemModel.ruleText?.value ?? '',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089, height: 1.2),
    );
  }
}
