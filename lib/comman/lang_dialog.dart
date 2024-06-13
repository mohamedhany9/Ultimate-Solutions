import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ultimate_solutions/colors/colors.dart';
import 'package:ultimate_solutions/comman/custom_button.dart';
import 'package:ultimate_solutions/styles/styles_manager.dart';


int selectLang = 0;

void showCustomDialog(BuildContext context) {

  showGeneralDialog(
    context: context,
    barrierLabel: "Lang",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return StatefulBuilder(
          builder: (context, setState) {
          return Material(
            type: MaterialType.transparency,
            child: Center(
              child: Container(
                height: 240.h,
                width: 340.w,
                padding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 17.w),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose Language",style: AppTextStyle.montserraBold.copyWith(fontSize: 12.sp,
                        color: ThemeColors.greenblack)),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectLang = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              decoration: BoxDecoration(
                                color: selectLang ==0 ? HexColor("#CBFFCB"): Colors.white,
                                  border: Border.all(color: HexColor("#0A3F8F")),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/arab-flag.png",height: 25.h,width: 25.w,),
                                  SizedBox(width: 14.w,),
                                  Column(
                                    children: [
                                      Text("العربية",style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 12.sp,
                                          color: ThemeColors.black)),
                                      Text("Arabic",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,
                                          color: ThemeColors.black)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectLang = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              decoration: BoxDecoration(
                                  color: selectLang ==1 ? HexColor("#CBFFCB"): Colors.white,
                                  border: Border.all(color: HexColor("#0A3F8F")),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/en-flag.png",height: 25.h,width: 25.w,),
                                  SizedBox(width: 14.w,),
                                  Column(
                                    children: [
                                      Text("English",style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 12.sp,
                                          color: ThemeColors.black)),
                                      Text("English",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,
                                          color: ThemeColors.black)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    CustomButton( "Apply", (){
                      if(selectLang ==0){
                        Locales.change(context, 'ar');
                        Get.updateLocale(context.currentLocale!);
                        Get.back();
                      }else if(selectLang ==1){
                        Locales.change(context, 'en');
                        Get.updateLocale(context.currentLocale!);
                        Get.back();
                      }

                    } ,ThemeColors.greenblack,fontSize: 16,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      );
    },
  );
}