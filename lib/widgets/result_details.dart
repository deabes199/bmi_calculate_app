import 'package:bmi_app/widgets/custom_row_result.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultDetails extends StatelessWidget {
  final bool isMale;
  final int age;
  final double height;
  final int weight;
  const ResultDetails(
      {super.key,
      required this.isMale,
      required this.age,
      required this.height,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 110.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                isMale ? Icons.man : Icons.woman,
                size: 30,
              ),
              Text(
                isMale ? 'Male'.tr() : 'Female'.tr(),
                style: TextStyle(fontSize: 20.sp),
              ),
            ],
          ),
          CustomRowResult(
            text: '${age}'.tr(),
            named: 'Age'.tr(),
          ),
          CustomRowResult(
            text: '${height.toStringAsFixed(1)}',
            named: 'Height'.tr(),
          ),
          CustomRowResult(
            text: '${weight}'.tr(),
            named: 'Weight'.tr(),
          ),
        ],
      ),
    );
  }
}
