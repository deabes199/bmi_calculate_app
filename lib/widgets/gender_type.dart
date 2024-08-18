import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bmi_app/spacer.dart';

class GenderType extends StatelessWidget {
  final bool isMale;
  final void Function()? ontap1;
   final void Function()? ontap2;
  GenderType({
    Key? key,
    required this.isMale,
    this.ontap1, this.ontap2,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:ontap1,
          child: Container(
            height: 50.h,
            width: 175.w,
            decoration: BoxDecoration(
              color: isMale ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(23.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.male,
                  size: 30.sp,
                  color: isMale ? Colors.white : Colors.blue,
                ),
                horzintalSpace(3),
                Text(
                  'Male'.tr(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: isMale ? Colors.white : Colors.blue),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap:ontap2,
           
          child: Container(
            height: 50.h,
            width: 175.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.r),
              color: isMale ? Colors.white : Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.female,
                    size: 30.sp,
                    color: isMale ? Colors.blue : Colors.white),
                horzintalSpace(3),
                Text(
                  'Female'.tr(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: isMale ? Colors.blue : Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
