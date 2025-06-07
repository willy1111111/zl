import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AgentTierModel {
  Rx<String>? tierName;
  Rx<String>? qualifiedBonus;

  AgentTierModel({
    this.tierName,
    this.qualifiedBonus,
  });
}
