import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bmi_app/spacer.dart';

// ignore: must_be_immutable
class AgeContainer extends StatelessWidget {
  final int age;
  final void Function()? ontap1;
  final void Function()? ontap2;
  AgeContainer({
    Key? key,
    required this.age, this.ontap1, this.ontap2,
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          height: 230.h,
          width: 175.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age'.tr(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              verticalSpace(5),
              Text(
                '${age}'.tr(),
                style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
              ),
              verticalSpace(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ontap1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                  onTap: ontap2,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
