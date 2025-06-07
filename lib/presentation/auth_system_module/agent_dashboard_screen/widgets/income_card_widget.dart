import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/income_card_model.dart';

class IncomeCardWidget extends StatelessWidget {
  final IncomeCardModel incomeCardModel;

  IncomeCardWidget({
    Key? key,
    required this.incomeCardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient:
            _getGradientFromType(incomeCardModel.gradientType?.value ?? ''),
        borderRadius: BorderRadius.circular(7.h),
      ),
      child: Column(
        children: [
          Text(
            incomeCardModel.title?.value ?? '',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.whiteCustom),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            incomeCardModel.amount?.value ?? '',
            style: TextStyleHelper.instance.title16Bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: incomeCardModel.imagePath?.value ?? '',
            height: 47.h,
            width: 49.h,
          ),
        ],
      ),
    );
  }

  LinearGradient _getGradientFromType(String gradientType) {
    switch (gradientType) {
      case 'gradient-9':
        return LinearGradient(
          begin: Alignment(-0.96, 0.28),
          end: Alignment(0.96, -0.28),
          colors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        );
      case 'gradient-10':
        return LinearGradient(
          begin: Alignment(-0.96, 0.28),
          end: Alignment(0.96, -0.28),
          colors: [Color(0xFF09ECAC), Color(0xFF1A68FE)],
        );
      case 'gradient-11':
        return LinearGradient(
          begin: Alignment(-0.72, 0.69),
          end: Alignment(0.72, -0.69),
          colors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        );
      case 'gradient-12':
        return LinearGradient(
          begin: Alignment(-0.72, 0.69),
          end: Alignment(0.72, -0.69),
          colors: [Color(0xFFEE47AB), Color(0xFFFFC74F)],
        );
      case 'gradient-13':
        return LinearGradient(
          begin: Alignment(-0.64, 0.77),
          end: Alignment(0.64, -0.77),
          colors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        );
      default:
        return LinearGradient(
          colors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        );
    }
  }
}
