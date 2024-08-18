import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultContiner extends StatelessWidget {
  final double result;
  const ResultContiner({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(
            '${result.toStringAsFixed(1)}'.tr(),
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Text(
            'kg/m2'.tr(),
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
