import 'package:bmi_app/spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowHieght extends StatelessWidget {
  final int number;
  const CustomRowHieght({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 1.5.h,
          color: Colors.black,
        ),
        horzintalSpace(10),
        Text('${number}'.tr()),
      ],
    );
  }
}
