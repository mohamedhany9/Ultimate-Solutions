import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions/colors/colors.dart';
import 'domin/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.appcolor,
      body: Stack(
        children: [
          SizedBox(
            height: 844.h,
            width: 390.w,
            child: Column(
              children: [
                SizedBox(height: 290.h,),
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Image.asset(controller.logo,height: 112.h,),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 44,
              child: Image.asset(controller.background ,width: 390.w,)),
          Positioned(
              bottom: 10,
              left: 50.w,
              child: Image.asset(controller.driver,width: 270.w,)),
        ],
      ),
    );
  }
}
