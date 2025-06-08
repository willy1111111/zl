import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class VipTableRowModel {
  Rx<String>? rowTitle;
  List<Rx<String>?>? values;
  Rx<bool>? isHighlighted;

  VipTableRowModel({
    this.rowTitle,
    this.values,
    this.isHighlighted,
  });

  VipTableRowModel.fromJson(Map<String, dynamic> json) {
    rowTitle = (json['rowTitle'] ?? '').obs;
    if (json['values'] != null) {
      values = (json['values'] as List)
          .map((value) => (value?.toString() ?? '').obs as Rx<String>?)
          .toList(); // Modified: Fixed type casting for List<dynamic> to List<Rx<String>?>
    }
    isHighlighted = (json['isHighlighted'] ?? false).obs;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['rowTitle'] = rowTitle?.value;
    data['values'] = values?.map((value) => value?.value).toList();
    data['isHighlighted'] = isHighlighted?.value;
    return data;
  }
}
