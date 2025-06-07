import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/agent_referral_program_controller.dart';
import '../models/agent_referral_program_model.dart';

class IncomeItemWidget extends StatelessWidget {
  final AgentReferralProgramModel model;

  IncomeItemWidget(this.model, {Key? key}) : super(key: key);

  var controller = Get.find<AgentReferralProgramController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          controller.onIncomeItemTap(int.parse(model.number?.value ?? '0')),
      child: Container(
        height: 60.h,
        width: double.maxFinite,
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
            Positioned(
              left: 0,
              top: 0,
              child: CustomImageView(
                imagePath: model.backgroundImagePath?.value ?? '',
                height: 60.h,
                width: 62.h,
              ),
            ),
            Positioned(
              left: 20.h,
              top: 15.h,
              child: Text(
                model.number?.value ?? '',
                style:
                    TextStyleHelper.instance.title22Bold.copyWith(height: 1.18),
              ),
            ),
            Positioned(
              left: 66.h,
              top: model.isMultiLine?.value ?? false ? 12.h : 21.h,
              right: 56.h,
              child: _buildContentText(),
            ),
            Positioned(
              right: 28.h,
              top: 16.h,
              child: CustomImageView(
                imagePath: model.expandIconPath?.value ?? '',
                height: 28.h,
                width: 28.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContentText() {
    if (model.isMultiLine?.value ?? false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Maximum ',
                  style: TextStyleHelper.instance.body15Bold
                      .copyWith(height: 1.13),
                ),
                TextSpan(
                  text: 'achievement reward',
                  style: TextStyleHelper.instance.body15Bold
                      .copyWith(height: 1.13),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'is ',
                  style: TextStyleHelper.instance.body15Bold
                      .copyWith(height: 1.13),
                ),
                TextSpan(
                  text: model.amount?.value ?? '',
                  style: TextStyleHelper.instance.body15Bold
                      .copyWith(color: appTheme.colorFFFFC6, height: 1.13),
                ),
              ],
            ),
          ),
        ],
      );
    } else if (model.isAmountFirst?.value ?? false) {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: model.amount?.value ?? '',
              style: TextStyleHelper.instance.body15Bold
                  .copyWith(color: appTheme.colorFFFFC6, height: 1.2),
            ),
            TextSpan(
              text: model.title?.value ?? '',
              style: TextStyleHelper.instance.body15Bold.copyWith(height: 1.2),
            ),
          ],
        ),
      );
    } else {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: model.title?.value ?? '',
              style: TextStyleHelper.instance.body15Bold.copyWith(height: 1.2),
            ),
            TextSpan(
              text: model.amount?.value ?? '',
              style: TextStyleHelper.instance.body15Bold
                  .copyWith(color: appTheme.colorFFFFC6, height: 1.2),
            ),
            if (model.subtitle?.value.isNotEmpty ?? false)
              TextSpan(
                text: model.subtitle?.value ?? '',
                style:
                    TextStyleHelper.instance.body15Bold.copyWith(height: 1.2),
              ),
          ],
        ),
      );
    }
  }
}
