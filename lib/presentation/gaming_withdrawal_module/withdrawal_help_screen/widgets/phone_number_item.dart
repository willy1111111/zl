import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/phone_number_model.dart';

class PhoneNumberItem extends StatelessWidget {
  final PhoneNumberModel phoneNumber;

  const PhoneNumberItem({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.h),
      child: Text(
        phoneNumber.number?.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial.copyWith(
            color: (phoneNumber.isHighlighted?.value ?? false)
                ? Color(0xFF808994)
                : appTheme.colorFFBCBC,
            height: 1.17),
      ),
    );
  }
}
