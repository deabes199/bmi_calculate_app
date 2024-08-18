import 'dart:math';

import 'package:bmi_app/screens/result_screen.dart';
import 'package:bmi_app/spacer.dart';
import 'package:bmi_app/widgets/age_container.dart';
import 'package:bmi_app/widgets/calculate_button.dart';
import 'package:bmi_app/widgets/gender_type.dart';
import 'package:bmi_app/widgets/slider_container.dart';
import 'package:bmi_app/widgets/welcome_text.dart';
import 'package:bmi_app/widgets/wieght_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double hieght = 110;
  int age = 10;
  int wieght = 40;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1d9e6),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const WelcomeText(),
            verticalSpace(16),
            GenderType(
              isMale: isMale,
              ontap1: () {
                setState(() {
                  isMale = true;
                });
              },
              ontap2: () {
                setState(() {
                  isMale = false;
                });
              },
            ),
            verticalSpace(16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SliderContainer(
                  onChanged: (value) {
                   setState(() {
                      hieght = value;
                   });
                  },
                  hieght: hieght,
                ),
                horzintalSpace(30),
                Column(
                  children: [
                    WieghtContainer(
                      ontap1: () {
                        setState(() {
                          wieght--;
                        });
                      },
                      ontap2: () {
                      setState(() {
                          wieght++;
                      });
                      },
                      wieght: wieght,
                    ),
                    verticalSpace(40),
                    AgeContainer(
                      ontap2: () {
                        setState(() {
                          age++;
                        });
                      },
                      ontap1: () {
                        setState(() {
                          age--;
                        });
                      },
                      age: age,
                    )
                  ],
                )
              ],
            ),
            verticalSpace(50),
            CalculateButton(
              onPressed: () {
                var result = wieght / pow(hieght / 100, 2);
                
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultScreen(
                      result: result,
                      age: age,
                      isMale: isMale,
                      h: hieght,
                      w: wieght);
                }));
              },
            )
          ]),
        ),
      )),
    );
  }
}
