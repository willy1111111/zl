import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class WalletTypeTabWidget extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  WalletTypeTabWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CustomImageView(
            imagePath: icon,
            height: 30.h,
            width: 30.h,
            margin: EdgeInsets.only(bottom: 1.h),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body14.copyWith(
                color: isSelected ? Color(0xFF85D420) : appTheme.whiteCustom),
          ),
        ],
      ),
    );
  }
}
