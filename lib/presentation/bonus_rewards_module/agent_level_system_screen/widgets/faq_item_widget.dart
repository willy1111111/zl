import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/faq_item_model.dart';

class FaqItemWidget extends StatelessWidget {
  final FaqItemModel faqItem;
  final bool isExpanded;
  final VoidCallback onTap;

  FaqItemWidget({
    Key? key,
    required this.faqItem,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: appTheme.colorFF2528),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.h,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.h),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      faqItem.question?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.5),
                    ),
                  ),
                  SizedBox(width: 16.h),
                  CustomImageView(
                    imagePath: faqItem.arrowPath?.value ?? '',
                    width: 28.h,
                    height: 28.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            if (isExpanded && faqItem.answer?.value.isNotEmpty == true)
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16.h, 0, 16.h, 16.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            faqItem.answer?.value.split('at JILITAKA')[0] ?? '',
                        style: TextStyleHelper.instance.body14
                            .copyWith(height: 1.14),
                      ),
                      if (faqItem.answer?.value.contains('at JILITAKA') ==
                          true) ...[
                        TextSpan(
                          text: 'at JILITAKA',
                          style: TextStyleHelper.instance.body14.copyWith(
                              color: appTheme.colorFF85D4,
                              height: 1.14,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
