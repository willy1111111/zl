import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class AppDownloadModel {
  Rx<String>? headerTitle;
  Rx<String>? headerSubtitle;
  Rx<String>? androidDownloadSize;
  Rx<String>? iosDownloadSize;
  Rx<bool>? isDownloading;

  AppDownloadModel({
    this.headerTitle,
    this.headerSubtitle,
    this.androidDownloadSize,
    this.iosDownloadSize,
    this.isDownloading,
  });
}
