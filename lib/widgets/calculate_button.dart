import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateButton extends StatelessWidget {
  final void Function()? onPressed;
  const CalculateButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          'Calculate'.tr(),
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
