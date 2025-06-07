import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/requirement_item_model.dart';

class RequirementItemWidget extends StatelessWidget {
  final RequirementItemModel requirement;

  const RequirementItemWidget({
    Key? key,
    required this.requirement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: requirement.backgroundColor?.value,
            borderRadius: BorderRadius.circular(4.h),
          ),
          padding: EdgeInsets.all(8.h),
          child: Row(
            children: [
              Container(
                width: 48.h,
                height: 48.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFD8D908),
                      appTheme.colorFF2FA0,
                      Color(0xFF009E41)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.whiteCustom.withAlpha(77),
                      blurRadius: 4.h,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: requirement.iconImage?.value ?? '',
                      height:
                          requirement.title?.value == 'Sign-in' ? 39.h : 38.h,
                      width: 36.h,
                    ),
                    Text(
                      requirement.title?.value ?? '',
                      style: TextStyleHelper.instance.body13Bold,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      requirement.firstRequirement?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                    Text(
                      requirement.secondRequirement?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
