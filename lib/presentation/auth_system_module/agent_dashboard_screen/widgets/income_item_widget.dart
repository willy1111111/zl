import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/income_item_model.dart';

class IncomeItemWidget extends StatelessWidget {
  final IncomeItemModel incomeItemModel;

  IncomeItemWidget({
    Key? key,
    required this.incomeItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.blackCustom,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CustomImageView(
                imagePath: incomeItemModel.badgeImage?.value ?? '',
                height: 60.h,
                width: 62.h,
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    incomeItemModel.number?.value ?? '',
                    style: TextStyleHelper.instance.title22Bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyleHelper.instance.body15Bold,
                children: [
                  TextSpan(
                    text: incomeItemModel.title?.value ?? '',
                    style: TextStyleHelper.instance.textStyle8
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  TextSpan(
                    text: incomeItemModel.amount?.value ?? '',
                    style: TextStyleHelper.instance.textStyle8
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                  if (incomeItemModel.subtitle?.value.isNotEmpty ?? false)
                    TextSpan(
                      text: incomeItemModel.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.textStyle8
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
