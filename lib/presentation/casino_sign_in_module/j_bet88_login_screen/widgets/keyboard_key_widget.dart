import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';

class KeyboardKeyWidget extends StatelessWidget {
  final String keyText;
  final VoidCallback onTap;
  final double? width;
  final Color? backgroundColor;

  KeyboardKeyWidget({
    Key? key,
    required this.keyText,
    required this.onTap,
    this.width,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 32.h,
        height: 40.h,
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        decoration: BoxDecoration(
          color: backgroundColor ?? Color(0xFF4A5568),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Center(
          child: Text(
            keyText,
            style: TextStyleHelper.instance.title16SemiBold,
          ),
        ),
      ),
    );
  }
}
