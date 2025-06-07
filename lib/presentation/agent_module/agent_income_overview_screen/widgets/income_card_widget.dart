import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/income_item_model.dart';

class IncomeCardWidget extends StatelessWidget {
  final IncomeItemModel incomeItem;

  const IncomeCardWidget({
    Key? key,
    required this.incomeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 313.h,
      height: incomeItem.height?.value ?? 54.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329928,
              width: 62.h,
              height: incomeItem.height?.value ?? 54.h,
            ),
          ),

          // Number
          Positioned(
            top: (incomeItem.height?.value ?? 54.h) > 54.h ? 15.h : 12.h,
            left: 20.h,
            child: Text(
              incomeItem.number?.value ?? '',
              style: TextStyleHelper.instance.title22BoldArial
                  .copyWith(height: 1.18),
            ),
          ),

          // Content
          Positioned(
            top: _getContentTopPosition(),
            left: 66.h,
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  double _getContentTopPosition() {
    if (incomeItem.isMultiline?.value ?? false) {
      return incomeItem.height?.value == 60.h ? 12.h : 9.h;
    }
    return incomeItem.isAmountFirst?.value ?? false ? 18.h : 17.h;
  }

  Widget _buildContent() {
    if (incomeItem.isAmountFirst?.value ?? false) {
      return _buildAmountFirstContent();
    } else if (incomeItem.isMultiline?.value ?? false) {
      return _buildMultilineContent();
    } else {
      return _buildSingleLineContent();
    }
  }

  Widget _buildSingleLineContent() {
    return Container(
      width: 214.h,
      height: 20.h,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: TextStyleHelper.instance.body15BoldArial.copyWith(height: 1.2),
          children: [
            TextSpan(
              text: incomeItem.title?.value ?? '',
              style: TextStyleHelper.instance.textStyle17
                  .copyWith(color: appTheme.whiteCustom),
            ),
            TextSpan(
              text: incomeItem.amount?.value ?? '',
              style: TextStyleHelper.instance.textStyle17
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMultilineContent() {
    return Container(
      width: 218.h,
      height: incomeItem.height?.value == 60.h ? 38.h : 35.h,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style:
              TextStyleHelper.instance.body15BoldArial.copyWith(height: 1.13),
          children: [
            if ((incomeItem.title?.value ?? '').isNotEmpty)
              TextSpan(
                text: incomeItem.title?.value ?? '',
                style: TextStyleHelper.instance.textStyle17
                    .copyWith(color: appTheme.whiteCustom),
              ),
            TextSpan(
              text: incomeItem.amount?.value ?? '',
              style: TextStyleHelper.instance.textStyle17
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
            if ((incomeItem.subtitle?.value ?? '').isNotEmpty)
              TextSpan(
                text: incomeItem.subtitle?.value ?? '',
                style: TextStyleHelper.instance.textStyle17
                    .copyWith(color: appTheme.whiteCustom),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmountFirstContent() {
    return Container(
      width: 208.h,
      height: 18.h,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: TextStyleHelper.instance.body15BoldArial.copyWith(height: 1.2),
          children: [
            TextSpan(
              text: incomeItem.amount?.value ?? '',
              style: TextStyleHelper.instance.textStyle17
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
            TextSpan(
              text: incomeItem.subtitle?.value ?? '',
              style: TextStyleHelper.instance.textStyle17
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }
}
