import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bank_card_item_model.dart';

class BankCardItemWidget extends StatelessWidget {
  final BankCardItemModel bankCardModel;

  BankCardItemWidget({
    Key? key,
    required this.bankCardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 335.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: _getGradient(),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          _buildCardContent(),
          _buildCardImage(),
          _buildCardShadow(),
        ],
      ),
    );
  }

  Widget _buildCardContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (bankCardModel.iconPath?.value != null &&
            bankCardModel.cardType?.value != null)
          _buildCardHeader(),
        if (bankCardModel.cardType?.value != null) SizedBox(height: 8.h),
        _buildGradientLine(),
        SizedBox(height: 28.h),
        if (bankCardModel.cardNumber?.value != null) _buildCardNumber(),
        if (bankCardModel.cardHolderName?.value != null)
          _buildCardHolderSection(),
        Spacer(),
        if (bankCardModel.date?.value != null) _buildCardDate(),
      ],
    );
  }

  Widget _buildCardHeader() {
    return Row(
      children: [
        CustomImageView(
          imagePath: bankCardModel.iconPath?.value ?? '',
          height: 18.h,
          width: 18.h,
        ),
        SizedBox(width: 7.h),
        Text(
          bankCardModel.isCapitalized?.value ?? false
              ? (bankCardModel.cardType?.value ?? '').toUpperCase()
              : bankCardModel.cardType?.value ?? '',
          style: TextStyleHelper.instance.title16Bold.copyWith(height: 1.38),
        ),
      ],
    );
  }

  Widget _buildGradientLine() {
    return Container(
      height: 1.h,
      width: 146.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFFFC700), Color(0xFFFFC700)],
        ),
      ),
    );
  }

  Widget _buildCardNumber() {
    return Text(
      bankCardModel.cardNumber?.value ?? '',
      style: TextStyleHelper.instance.headline24Black
          .copyWith(height: 1.42, shadows: [
        Shadow(
          offset: Offset(0, 1.h),
          blurRadius: 2.h,
          color: appTheme.blackCustom,
        ),
      ]),
    );
  }

  Widget _buildCardHolderSection() {
    return Positioned(
      top: 85.h,
      left: 0,
      child: Row(
        children: [
          Container(
            width: 1.h,
            height: 17.h,
            color: appTheme.whiteCustom,
          ),
          SizedBox(width: 8.h),
          Text(
            bankCardModel.cardHolderName?.value ?? '',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
          ),
        ],
      ),
    );
  }

  Widget _buildCardDate() {
    return Text(
      bankCardModel.date?.value ?? '',
      style: TextStyleHelper.instance.body12Bold
          .copyWith(color: appTheme.whiteCustom, height: 1.17),
    );
  }

  Widget _buildCardImage() {
    return Positioned(
      top: 37.h,
      right: 20.h,
      child: CustomImageView(
        imagePath: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
        height: 80.h,
        width: 75.h,
      ),
    );
  }

  Widget _buildCardShadow() {
    return Positioned(
      top: 116.h,
      right: 20.h,
      child: Container(
        height: 9.h,
        width: bankCardModel.cardType?.value != null ? 89.h : 75.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.h),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0x7F3F3F3F),
              appTheme.color7F3F3F,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              offset: Offset(0, 4.h),
              blurRadius: 12.h,
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient _getGradient() {
    switch (bankCardModel.gradientType?.value) {
      case 1:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        );
      case 2:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFFFF4236), Color(0xFF1B3DF0)],
        );
      case 3:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFFFFBB36), Color(0xFFF01AC1)],
        );
      case 4:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        );
      case 5:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFFFF4236), Color(0xFF1B3DF0)],
        );
      default:
        return LinearGradient(
          begin: Alignment(-0.5, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        );
    }
  }
}
