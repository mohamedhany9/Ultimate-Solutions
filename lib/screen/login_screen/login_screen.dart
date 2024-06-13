import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ultimate_solutions/colors/colors.dart';
import 'package:ultimate_solutions/comman/custom_button.dart';
import 'package:ultimate_solutions/comman/lang_dialog.dart';
import 'package:ultimate_solutions/screen/login_screen/domin/login_controller.dart';
import 'package:ultimate_solutions/styles/styles_manager.dart';

class LoginScreen extends GetView<LoginController>{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 844.h,
        width: 390.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Image.asset("assets/images/logo.png",height: 74.h),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/ic_circle.png",height: 127.h,),
                        Positioned(child: GestureDetector(
                            onTap: (){
                            showCustomDialog(context);
                            },
                            child: Image.asset("assets/images/ic_language.png",height: 26,)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 130.h,),
              Text(context.localeString('welcome'),style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 29.sp,color: ThemeColors.greenblack)
                ,textAlign: TextAlign.center,),
              Text(context.localeString('log'),style: AppTextStyle.montserraRegular.copyWith(fontSize: 12.sp,color: ThemeColors.greenblack)
                ,textAlign: TextAlign.center,),
              SizedBox(height: 44.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.emailController,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    filled: true,
                    fillColor: HexColor('#F1F5FB'),
                    hintText: context.localeString('username'),
                    hintStyle: TextStyle(color: Colors.black),
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder:  OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: HexColor("#F1F5FB"),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(color:  HexColor("#F1F5FB"),),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius:  const BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: HexColor("#F1F5FB"),
                      ),
                    ),),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.passwordController,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    filled: true,
                    fillColor: HexColor('#F1F5FB'),
                    hintText:  context.localeString('password'),
                    hintStyle: TextStyle(color: Colors.black),
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder:  OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: HexColor("#F1F5FB"),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(color:  HexColor("#F1F5FB"),),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius:  const BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                      borderSide: BorderSide(
                        color: HexColor("#F1F5FB"),
                      ),
                    ),),
                ),
              ),
              SizedBox(height: 27.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(context.localeString('showmore'),style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 14.sp,
                        color: ThemeColors.greenblack)),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomButton( context.localeString('login'), (){

                  controller.LoginMethod();
                } ,ThemeColors.greenblack,fontSize: 16,
                ),
              ),
              SizedBox(height: 37.h,),
              Image.asset("assets/images/delivery.png",height: 170.h,),
            ],
          ),
        ),
      ),
    );
  }

}
