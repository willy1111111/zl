import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/income_card_model.dart';

class IncomeCardWidget extends StatelessWidget {
  final IncomeCardModel incomeCard;

  IncomeCardWidget({
    Key? key,
    required this.incomeCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: incomeCard.gradientColors?.value ??
              [Color(0xFF14BFEC), Color(0xFF006CD9)],
        ),
        borderRadius:
            BorderRadius.circular(incomeCard.borderRadius?.value ?? 5.0),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: incomeCard.isTextCentered?.value ?? false
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                incomeCard.title?.value ?? '',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFFFFFF),
                textAlign: incomeCard.isTextCentered?.value ?? false
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              SizedBox(height: 4.h),
              Text(
                incomeCard.amount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFFFFFF),
                textAlign: incomeCard.isTextCentered?.value ?? false
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
          Positioned(
            top: incomeCard.borderRadius?.value == 7.0 ? 7.h : 9.h,
            right: 7.h,
            child: CustomImageView(
              imagePath: incomeCard.iconPath?.value ?? '',
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }
}
