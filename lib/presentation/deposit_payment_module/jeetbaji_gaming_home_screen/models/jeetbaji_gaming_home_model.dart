import 'package:get/get.dart';
import '../../../core/app_export.dart';

class JeetbajiGamingHomeModel {
  Rx<String>? brandName;
  Rx<String>? balance;
  Rx<String>? jackpotAmount;

  JeetbajiGamingHomeModel({
    this.brandName,
    this.balance,
    this.jackpotAmount,
  });
}
