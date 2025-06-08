import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/contact_model.dart';

class ContactNumberWidget extends StatelessWidget {
  final ContactModel contactModel;

  ContactNumberWidget({
    Key? key,
    required this.contactModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Text(
        contactModel.phoneNumber?.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial.copyWith(
            color: (contactModel.isHighlighted?.value ?? false)
                ? Color(0xFF808994)
                : appTheme.colorFFBCBC,
            height: 1.17),
      ),
    );
  }
}
