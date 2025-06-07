import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/requirement_model.dart';

class RequirementItemWidget extends StatelessWidget {
  final RequirementModel requirementModel;

  RequirementItemWidget({
    Key? key,
    required this.requirementModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: requirementModel.backgroundColor?.value ?? Color(0xFF006F2C),
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
                    stops: [0.0, 0.44, 1.0],
                    colors: [
                      Color(0xFFD8D908),
                      appTheme.colorFF2FA0,
                      Color(0xFF009E41)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.whiteCustom.withAlpha(51),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: requirementModel.icon?.value ?? '',
                      width: 36.h,
                      height: requirementModel.icon?.value.contains('26x28') ??
                              false
                          ? 39.h
                          : 38.h,
                    ),
                    Text(
                      requirementModel.title?.value ?? '',
                      style: TextStyleHelper.instance.body13Bold
                          .copyWith(color: appTheme.colorFFEEFF),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Text(
                  requirementModel.description?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4, height: 1.28),
                ),
              ),
            ],
          ),
        ));
  }
}
