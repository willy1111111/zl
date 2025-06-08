import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used to represent player ID data in the help invitation modal.

class PlayerIdModel {
  Rx<String>? id;
  Rx<bool>? isHighlighted;

  PlayerIdModel({
    this.id,
    this.isHighlighted,
  });
}
