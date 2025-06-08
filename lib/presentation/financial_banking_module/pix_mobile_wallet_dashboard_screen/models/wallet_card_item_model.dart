import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletCardItemModel {
  Rx<List<Color>>? gradientColors;
  Rx<String>? cardImage;
  Rx<String>? pixLogo;
  Rx<String>? pixMobileText;
  Rx<String>? cardNumber;
  Rx<String>? expiryDate;
  Rx<bool>? showDetails;
  Rx<bool>? isPrimaryCard;

  WalletCardItemModel({
    this.gradientColors,
    this.cardImage,
    this.pixLogo,
    this.pixMobileText,
    this.cardNumber,
    this.expiryDate,
    this.showDetails,
    this.isPrimaryCard,
  });
}
