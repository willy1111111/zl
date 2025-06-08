import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/promotion_item_model.dart';

class PromotionItemWidget extends StatelessWidget {
  final PromotionItemModel promotionItem;
  final VoidCallback? onTap;

  PromotionItemWidget({
    Key? key,
    required this.promotionItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (promotionItem.title?.value == 'Experience bonus -') {
      return _buildExperienceBonusItem();
    } else if (promotionItem.title?.value == 'Gift Code') {
      return _buildGiftCodeItem();
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: promotionItem.icon?.value ?? '',
                  height: 36.h,
                  width: 36.h,
                ),
                SizedBox(width: 16.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      promotionItem.title?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    if (promotionItem.description?.value.isNotEmpty ??
                        false) ...[
                      SizedBox(height: 4.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: promotionItem.description?.value ?? '',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(
                                      color: appTheme.colorFFABB6, height: 1.2),
                            ),
                            if (promotionItem.highlightText?.value.isNotEmpty ??
                                false)
                              TextSpan(
                                text: promotionItem.highlightText?.value ?? '',
                                style: TextStyleHelper.instance.body12Bold
                                    .copyWith(
                                        color: appTheme.colorFF85D4,
                                        height: 1.2),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeBlueGray700,
              height: 7.h,
              width: 13.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceBonusItem() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 36.h,
                  height: 36.h,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: CustomImageView(
                          imagePath: ImageConstant.img17,
                          height: 32.h,
                          width: 32.h,
                        ),
                      ),
                      Positioned(
                        top: 9.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img133x67,
                          height: 18.h,
                          width: 37.h,
                        ),
                      ),
                      Positioned(
                        top: 22.h,
                        left: 5.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img2,
                          height: 5.h,
                          width: 10.h,
                        ),
                      ),
                      Positioned(
                        top: 1.h,
                        left: 21.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage381,
                          height: 6.h,
                          width: 6.h,
                        ),
                      ),
                      Positioned(
                        top: 5.h,
                        left: 19.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage383,
                          height: 5.h,
                          width: 5.h,
                        ),
                      ),
                      Positioned(
                        top: 3.h,
                        left: 15.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage382,
                          height: 4.h,
                          width: 4.h,
                        ),
                      ),
                      Positioned(
                        top: 9.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img14,
                          height: 19.h,
                          width: 38.h,
                        ),
                      ),
                      Positioned(
                        top: 15.h,
                        left: 6.h,
                        child: Text(
                          'Experience',
                          style: TextStyleHelper.instance.label5
                              .copyWith(height: 1.6, shadows: [
                            Shadow(
                              offset: Offset(0, 0),
                              blurRadius: 1.h,
                              color: appTheme.blackCustom,
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Experience bonus -',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 4.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Bonus up to ',
                            style: TextStyleHelper.instance.body12Bold.copyWith(
                                color: appTheme.colorFFABB6, height: 1.2),
                          ),
                          TextSpan(
                            text: '৳100.00 for new users',
                            style: TextStyleHelper.instance.body12Bold.copyWith(
                                color: appTheme.colorFF85D4, height: 1.2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeBlueGray700,
              height: 7.h,
              width: 13.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGiftCodeItem() {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img236,
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(width: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF1B1C,
                      border: Border.all(color: appTheme.colorFF282F),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                    width: 194.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter the gift code',
                        hintStyle: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFF8089),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Gift Code',
                    style: TextStyleHelper.instance.body13Bold
                        .copyWith(color: appTheme.colorFF4B55),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF363C41), Color(0xFF2B3035)],
              ),
              borderRadius: BorderRadius.circular(17.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
            child: Text(
              'Exchange',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }
}
