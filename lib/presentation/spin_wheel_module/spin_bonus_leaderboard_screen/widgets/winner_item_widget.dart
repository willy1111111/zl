import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/winner_item_model.dart';

class WinnerItemWidget extends StatelessWidget {
  final WinnerItemModel winnerModel;

  const WinnerItemWidget({
    Key? key,
    required this.winnerModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.color994147,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 91.h,
            child: Text(
              winnerModel.userName?.value ?? '',
              style: TextStyleHelper.instance.body12,
            ),
          ),
          SizedBox(
            width: 70.h,
            child: Text(
              winnerModel.spinLevel?.value.toUpperCase() ?? '',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Row(
            children: [
              Text(
                winnerModel.prizeAmount?.value ?? '',
                style: TextStyleHelper.instance.body12Medium,
              ),
              SizedBox(width: 8.h),
              _buildPrizeIcon(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPrizeIcon() {
    if (winnerModel.hasSpecialPrize?.value ?? false) {
      return Stack(
        children: [
          CustomImageView(
            imagePath: winnerModel.prizeIcon?.value ?? '',
            height: 19.h,
            width: 19.h,
          ),
          Positioned(
            top: 13.h,
            left: 4.h,
            child: Container(
              width: 9.h,
              height: 2.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF3b0366),
                    appTheme.colorFF3D05,
                    appTheme.colorFF0B15,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4.h),
                    color: appTheme.colorFF8888,
                  ),
                ],
              ),
              child: Positioned(
                top: 0,
                left: 1.h,
                child: Text(
                  winnerModel.specialPrizeAmount?.value ?? '',
                  style: TextStyleHelper.instance.label11Bold,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomImageView(
        imagePath: winnerModel.prizeIcon?.value ?? '',
        height: 19.h,
        width: 19.h,
      );
    }
  }
}
