import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bmi_app/spacer.dart';
import 'package:bmi_app/widgets/custom_row_hieght.dart';

// ignore: must_be_immutable
class SliderContainer extends StatelessWidget {
  final double hieght;
  final void Function(double)? onChanged;

  SliderContainer({
    Key? key,
    required this.hieght, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          width: 170.w,
          height: 500.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Height'.tr()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${hieght.round()}'.tr(),
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                  Text('  cm'.tr())
                ],
              ),
              verticalSpace(15),
              Row(
                children: [
                  Container(
                    height: 400.h,
                    width: 30.w,
                    child: RotatedBox(
                      
                      quarterTurns: 3,
                      child: Slider(
                        
                          max: 190,
                          min: 110,
                          activeColor: Colors.blue,
                          value: hieght,
                          onChanged: onChanged
                          
                          ),
                    ),
                  ),
                  horzintalSpace(16),
                  SizedBox(
                    height: 360.h,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomRowHieght(number: 190),
                        CustomRowHieght(number: 180),
                        CustomRowHieght(number: 170),
                        CustomRowHieght(number: 160),
                        CustomRowHieght(number: 150),
                        CustomRowHieght(number: 140),
                        CustomRowHieght(number: 130),
                        CustomRowHieght(number: 120),
                        CustomRowHieght(number: 110),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

}
