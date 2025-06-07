import '../../../../../core/app_export.dart';

/// This class is used in the [BonusDashboardScreen] screen with GetX.

class BonusDashboardModel {
  Rx<String>? dateRange;
  Rx<String>? depositType;
  Rx<String>? totalAmount;
  Rx<bool>? hasData;
  Rx<String>? noDataImage;
  Rx<String>? currency;

  BonusDashboardModel({
    String? dateRange,
    String? depositType,
    String? totalAmount,
    bool? hasData,
    String? noDataImage,
    String? currency,
  }) {
    this.dateRange = (dateRange ?? '08-21  -  08-27').obs;
    this.depositType = (depositType ?? 'Deposit Rebate').obs;
    this.totalAmount = (totalAmount ?? '₱ 333,333.00').obs;
    this.hasData = (hasData ?? false).obs;
    this.noDataImage = (noDataImage ?? ImageConstant.imgGroup278).obs;
    this.currency = (currency ?? '₱').obs;
  }
}
