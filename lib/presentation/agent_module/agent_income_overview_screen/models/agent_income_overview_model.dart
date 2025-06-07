import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AgentIncomeOverviewModel {
  Rx<String>? backgroundImagePath;
  Rx<String>? headerImagePath;
  Rx<String>? bannerImagePath;
  Rx<String>? title;
  Rx<String>? recommendText;
  Rx<String>? joinText;

  AgentIncomeOverviewModel({
    this.backgroundImagePath,
    this.headerImagePath,
    this.bannerImagePath,
    this.title,
    this.recommendText,
    this.joinText,
  });
}
