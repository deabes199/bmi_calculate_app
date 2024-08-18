import 'package:bmi_app/spacer.dart';
import 'package:bmi_app/widgets/result_continer.dart';
import 'package:bmi_app/widgets/result_details.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatefulWidget {
  final double result;
  final int age;
  final bool isMale;
  final double h;
  final int w;
  const ResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.isMale,
      required this.h,
      required this.w});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1d9e6),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Result'.tr(),
                style: TextStyle(fontSize: 30.sp),
              ),
              verticalSpace(30),
              Text(
                'Your BMI is'.tr(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              verticalSpace(30),
              ResultContiner(result: widget.result),
              verticalSpace(60),
              ResultDetails(isMale: widget.isMale, age: widget.age, height: widget.h, weight: widget.w),
              verticalSpace(30),
              BackToHomeScreen()
            ],
          ),
        ),
      )),
    );
  }
}

class BackToHomeScreen extends StatelessWidget {
  const BackToHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20.r)),
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.restart_alt,
          size: 40.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
