import '../../../../core/app_export.dart';

class AppDownloadPromotionModel {
  Rx<String>? description;
  Rx<String>? pageIndicator;

  AppDownloadPromotionModel({
    this.description,
    this.pageIndicator,
  }) {
    description = description ??
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis.'
            .obs;
    pageIndicator = pageIndicator ?? '1/8'.obs;
  }
}
