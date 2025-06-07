import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GamingHomeModel {
  Rx<String>? logoPath;
  Rx<String>? balance;
  Rx<String>? currency;
  Rx<bool>? showBanner;
  Rx<bool>? showDownloadModal;

  GamingHomeModel({
    this.logoPath,
    this.balance,
    this.currency,
    this.showBanner,
    this.showDownloadModal,
  });
}
