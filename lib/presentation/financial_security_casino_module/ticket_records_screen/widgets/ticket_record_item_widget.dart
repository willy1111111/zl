import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/ticket_record_model.dart';

class TicketRecordItemWidget extends StatelessWidget {
  final TicketRecordModel ticketRecord;

  TicketRecordItemWidget({
    Key? key,
    required this.ticketRecord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 111.h,
      child: Stack(
        children: [
          // Background Card
          CustomImageView(
            imagePath: ticketRecord.backgroundImagePath?.value ?? '',
            width: 345.h,
            height: 111.h,
          ),

          // Card Content
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon Container
                  Container(
                    width: ticketRecord.iconWidth?.value ?? 53.h,
                    height: 53.h,
                    margin: EdgeInsets.only(top: 17.h),
                    decoration: BoxDecoration(
                      color: ticketRecord.iconBackgroundColor?.value ??
                          Color(0xFF2D4440),
                      borderRadius: BorderRadius.circular(8.h),
                      boxShadow: [
                        BoxShadow(
                          color: ticketRecord.iconShadowColor?.value ??
                              Color(0xFF006551),
                          spreadRadius: 0,
                          blurRadius: 15.h,
                          offset: Offset(0, 3.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: ticketRecord.iconPath?.value ?? '',
                        width: ticketRecord.iconWidth?.value ?? 38.h,
                        height: ticketRecord.iconHeight?.value ?? 38.h,
                      ),
                    ),
                  ),

                  SizedBox(width: 15.h),

                  // Content
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticketRecord.title?.value ?? '',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.whiteCustom),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 18.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Bonus: ',
                                  style: TextStyleHelper
                                      .instance.body14BoldArial
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                TextSpan(
                                  text: ticketRecord.bonus?.value ?? '',
                                  style: TextStyleHelper
                                      .instance.body14BoldArial
                                      .copyWith(
                                          color: ticketRecord
                                                  .bonusTextColor?.value ??
                                              Color(0xFFFFC600)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'Time: ${ticketRecord.time?.value ?? ''}',
                            style: TextStyleHelper.instance.body13BoldArial
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 15.h),

                  // Right Image
                  Container(
                    margin: EdgeInsets.only(top: 9.h),
                    child: CustomImageView(
                      imagePath: ticketRecord.rightImagePath?.value ?? '',
                      width: 101.h,
                      height: 87.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
