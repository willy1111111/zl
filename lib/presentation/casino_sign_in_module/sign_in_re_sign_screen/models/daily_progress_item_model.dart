import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/daily_progress_item_widget.dart';

/// This class is used in the [DailyProgressItemWidget] component with GetX.

class DailyProgressItemModel {
  Rx<String>? day;
  Rx<String>? amount;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrentDay;
  Rx<String>? coinImage;
  Rx<String>? checkImage;
  Rx<String>? bonusImage;
  Rx<String>? bonusText;
  Rx<String>? futureImage;

  DailyProgressItemModel({
    this.day,
    this.amount,
    this.isCompleted,
    this.isCurrentDay,
    this.coinImage,
    this.checkImage,
    this.bonusImage,
    this.bonusText,
    this.futureImage,
  });
}
