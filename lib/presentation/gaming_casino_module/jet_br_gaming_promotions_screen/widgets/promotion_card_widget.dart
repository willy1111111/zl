import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/promotion_card_model.dart';

class PromotionCardWidget extends StatelessWidget {
  final PromotionCardModel promotionCard;
  final VoidCallback? onMoreInfoTap;

  PromotionCardWidget({
    Key? key,
    required this.promotionCard,
    this.onMoreInfoTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
      width: 345.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: promotionCard.imageUrl?.value ?? '',
            height: 164.h,
            width: 345.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 91.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF171C21),
                    appTheme.colorFF171C,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7.h),
                  bottomRight: Radius.circular(7.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      promotionCard.title?.value ?? '',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom, height: 1.21),
                    ),
                    SizedBox(height: 25.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: onMoreInfoTap,
                        child: Container(
                          height: 28.h,
                          width: 154.h,
                          decoration: BoxDecoration(
                            color: appTheme.colorFF2528,
                            borderRadius: BorderRadius.circular(14.h),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.h),
                            child: Row(
                              children: [
                                Text(
                                  'More information',
                                  style: TextStyleHelper
                                      .instance.body14BoldArial
                                      .copyWith(
                                          color: appTheme.colorFFF6D1,
                                          height: 1.21),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorAmber300,
                                  height: 9.h,
                                  width: 11.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
