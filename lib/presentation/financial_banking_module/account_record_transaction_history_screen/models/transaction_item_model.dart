import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class TransactionItemModel {
  Rx<String>? icon;
  Rx<String>? transactionType;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? balance;
  Rx<String>? currencyIcon;
  Rx<String>? currencySymbol;
  Rx<Color>? amountColor;

  TransactionItemModel({
    this.icon,
    this.transactionType,
    this.dateTime,
    this.amount,
    this.balance,
    this.currencyIcon,
    this.currencySymbol,
    this.amountColor,
  });
}
