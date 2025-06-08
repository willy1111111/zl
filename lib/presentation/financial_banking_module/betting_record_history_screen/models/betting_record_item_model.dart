import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/betting_record_item_widget.dart';

/// This class is used in the [BettingRecordItemWidget] component with GetX.
class BettingRecordItemModel {
  Rx<String>? gameIcon;
  Rx<String>? gameName;
  Rx<String>? dateTime;
  Rx<String>? betAmount;
  Rx<String>? payOut;
  Rx<bool>? isWin;

  BettingRecordItemModel({
    this.gameIcon,
    this.gameName,
    this.dateTime,
    this.betAmount,
    this.payOut,
    this.isWin,
  });
}
