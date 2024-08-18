import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowResult extends StatelessWidget {
  final dynamic text;
  final String named;
  const CustomRowResult({super.key, this.text, required this.named});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '${text}'.tr(),
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          '${named}'.tr(),
          style: TextStyle(fontSize: 20.sp),
        ),
      ],
    );
  }
}
