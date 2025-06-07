import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/sign_in_rules_item_model.dart';

class SignInRulesItemWidget extends StatelessWidget {
  final SignInRulesItemModel signInRulesItemModel;

  SignInRulesItemWidget({
    Key? key,
    required this.signInRulesItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: CustomImageView(
            imagePath: signInRulesItemModel.iconPath?.value ?? '',
            height: _getIconHeight(),
            width: _getIconWidth(),
          ),
        ),
        SizedBox(width: _getSpacing()),
        Expanded(
          child: _buildRuleText(),
        ),
      ],
    );
  }

  double _getIconHeight() {
    String iconPath = signInRulesItemModel.iconPath?.value ?? '';
    if (iconPath.contains('12649')) return 11.h;
    if (iconPath.contains('12650')) return 12.h;
    if (iconPath.contains('12651')) return 15.h;
    if (iconPath.contains('12647')) return 14.h;
    return 13.h;
  }

  double _getIconWidth() {
    String iconPath = signInRulesItemModel.iconPath?.value ?? '';
    if (iconPath.contains('12649')) return 13.h;
    if (iconPath.contains('12650')) return 11.h;
    if (iconPath.contains('12651')) return 11.h;
    if (iconPath.contains('12647')) return 12.h;
    return 13.h;
  }

  double _getSpacing() {
    String iconPath = signInRulesItemModel.iconPath?.value ?? '';
    if (iconPath.contains('12649')) return 3.h;
    if (iconPath.contains('12650')) return 5.h;
    if (iconPath.contains('12651')) return 5.h;
    if (iconPath.contains('12647')) return 4.h;
    return 5.h;
  }

  Widget _buildRuleText() {
    if (signInRulesItemModel.hasHighlightedText?.value ?? false) {
      return RichText(
        text: TextSpan(
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.14),
          children: _buildTextSpans(),
        ),
      );
    } else {
      return Text(
        signInRulesItemModel.ruleText?.value ?? '',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFF8089, height: 1.14),
      );
    }
  }

  List<TextSpan> _buildTextSpans() {
    String fullText = signInRulesItemModel.ruleText?.value ?? '';
    String highlightedText = signInRulesItemModel.highlightedText?.value ?? '';
    Color highlightedColor =
        signInRulesItemModel.highlightedColor?.value ?? Color(0xFF51A0FF);

    if (highlightedText.isEmpty || !fullText.contains(highlightedText)) {
      return [TextSpan(text: fullText)];
    }

    List<TextSpan> spans = [];
    List<String> parts = fullText.split(highlightedText);

    for (int i = 0; i < parts.length; i++) {
      if (parts[i].isNotEmpty) {
        spans.add(TextSpan(text: parts[i]));
      }

      if (i < parts.length - 1) {
        spans.add(TextSpan(
          text: highlightedText,
          style: TextStyleHelper.instance.textStyle21,
        ));
      }
    }

    return spans;
  }
}
