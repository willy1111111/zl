import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class EventOptionItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSpecial;
  final VoidCallback? onTap;

  EventOptionItemWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    this.isSpecial = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isSpecial) {
      return GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              width: 110.h,
              height: 70.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x000B783D), Color(0xFF9FB90A)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10.h),
                border: Border.all(color: appTheme.colorFFFFFB, width: 2.h),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Text(
                    title,
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -11.h,
              left: 33.h,
              child: CustomImageView(
                imagePath: imagePath,
                height: 53.h,
                width: 44.h,
              ),
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 90.h,
            height: title == 'Cash Voucher' ? 54.h : 58.h,
            decoration: BoxDecoration(
              gradient: title == 'Cash Voucher'
                  ? LinearGradient(
                      colors: [Color(0x00EC3232), Color(0xFFFFBA48)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
              borderRadius:
                  BorderRadius.circular(title == 'Cash Voucher' ? 8.h : 0),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: imagePath,
                height: title == 'Cash Voucher' ? 50.h : 58.h,
                width: title == 'Cash Voucher' ? 61.h : 90.h,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: TextStyleHelper.instance.body12Bold.copyWith(
                color: title == 'Cash Voucher'
                    ? Color(0xFF5A2710)
                    : appTheme.colorFF7310),
          ),
        ],
      ),
    );
  }
}
