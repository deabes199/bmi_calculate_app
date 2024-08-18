import 'package:bmi_app/spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            verticalSpace(35),
            Text('Welcome '.tr()),
            Text(
              'BMI Calculate'.tr(),
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 40.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: MaterialButton(
            onPressed: () {
              context.setLocale(Locale('en'));
            },
            child: Text(
              'English'.tr(),
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
        horzintalSpace(2),
        Container(
          height: 40.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: MaterialButton(
            onPressed: () {
              context.setLocale(Locale('ar'));
            },
            child: Text(
              'Arabic'.tr(),
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
