import '../../../../core/app_export.dart';

class ContentModalModel {
  Rx<String>? contentText;
  Rx<int>? currentPage;
  Rx<int>? totalPages;

  ContentModalModel({
    this.contentText,
    this.currentPage,
    this.totalPages,
  });
}
