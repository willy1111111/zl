import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_getBorderRadius()),
        gradient: _getGradient(),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: _getAlignment(),
        children: [
          Text(
            bonusCard.title?.value ?? '',
            textAlign: _getTextAlignment(),
            style: TextStyleHelper.instance.body12Arial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 8.h),
          Text(
            bonusCard.amount?.value ?? '',
            textAlign: _getTextAlignment(),
            style: TextStyleHelper.instance.title16BoldArial,
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerRight,
            child: CustomImageView(
              imagePath: bonusCard.iconPath?.value ?? '',
              height: 49.h,
              width: 47.h,
            ),
          ),
        ],
      ),
    );
  }

  double _getBorderRadius() {
    int gradientIndex = bonusCard.gradientIndex?.value ?? 5;
    return gradientIndex == 3 || gradientIndex == 5 ? 7.0 : 5.0;
  }

  CrossAxisAlignment _getAlignment() {
    String title = bonusCard.title?.value ?? '';
    return title.contains('Deposit Rebate') || title.contains('BettingRebate')
        ? CrossAxisAlignment.center
        : CrossAxisAlignment.start;
  }

  TextAlign _getTextAlignment() {
    String title = bonusCard.title?.value ?? '';
    return title.contains('Deposit Rebate') || title.contains('BettingRebate')
        ? TextAlign.center
        : TextAlign.start;
  }

  LinearGradient _getGradient() {
    int gradientIndex = bonusCard.gradientIndex?.value ?? 3;

    switch (gradientIndex) {
      case 3:
        return LinearGradient(
          begin: Alignment(0.221, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        );
      case 4:
        return LinearGradient(
          begin: Alignment(0.49, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        );
      case 5:
        return LinearGradient(
          begin: Alignment(0.221, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF09ECAC), Color(0xFF1A68FE)],
        );
      case 6:
        return LinearGradient(
          begin: Alignment(0.49, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFFEE47AB), Color(0xFFFFC74F)],
        );
      case 7:
        return LinearGradient(
          begin: Alignment(0.53, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        );
      default:
        return LinearGradient(
          begin: Alignment(0.221, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        );
    }
  }
}
