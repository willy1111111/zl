import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FaqItemModel {
  Rx<String>? question;
  Rx<String>? answer;
  Rx<bool>? isExpanded;
  Rx<String>? arrowPath;

  FaqItemModel({
    this.question,
    this.answer,
    this.isExpanded,
    this.arrowPath,
  });
}
