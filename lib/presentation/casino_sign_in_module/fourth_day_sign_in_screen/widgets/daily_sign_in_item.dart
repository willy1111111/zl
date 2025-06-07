import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/daily_sign_in_item_model.dart';

class DailySignInItem extends StatelessWidget {
  final DailySignInItemModel signInData;

  const DailySignInItem({
    Key? key,
    required this.signInData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (signInData.showBonusText?.value ?? false)
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Text(
              signInData.bonusText?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: Color(signInData.backgroundColor?.value ?? 0xFF25282D),
            border: Border.all(
              color: Color(signInData.borderColor?.value ?? 0xFF292F36),
            ),
            borderRadius: BorderRadius.circular(8.h),
          ),
          width: 60.h,
          height: 62.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                signInData.amount?.value ?? '',
                style: TextStyleHelper.instance.body12Bold.copyWith(
                    color: Color(signInData.amountColor?.value ?? 0xFFC0C8D2)),
              ),
              SizedBox(height: 4.h),
              CustomImageView(
                imagePath: signInData.coinImage?.value ?? '',
                height: signInData.isActive?.value ?? false ? 40.h : 24.h,
                width: signInData.isActive?.value ?? false ? 40.h : 24.h,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          signInData.day?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
      ],
    );
  }
}
