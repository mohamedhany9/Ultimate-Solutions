import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ultimate_solutions/colors/colors.dart';
import 'package:ultimate_solutions/comman/lang_dialog.dart';
import 'package:ultimate_solutions/screen/home_screen/domin/home_controller.dart';
import 'package:ultimate_solutions/screen/home_screen/widget/new_order.dart';
import 'package:ultimate_solutions/screen/home_screen/widget/other_order.dart';
import 'package:ultimate_solutions/styles/styles_manager.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 127.h,
                    width: 390.w,
                    color: HexColor("#D42A0F"),
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ahmed",style: AppTextStyle.montserraRegular.copyWith(fontSize: 25.sp
                            ,color: Colors.white),textAlign: TextAlign.start,),
                        Text("Othman",style: AppTextStyle.montserraBold.copyWith(fontSize: 25.sp
                            ,color: Colors.white),textAlign: TextAlign.start,),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child:  Image.asset("assets/images/ic_circle.png",height: 127.h,color: ThemeColors.greenblack,),),
                  Positioned(
                    right: 50.w,
                    child:  Image.asset("assets/images/deliveryman.png",height: 127.h),),
                  Positioned(
                    right: 17.w,
                      top: 43.h,
                      child: GestureDetector(
                          onTap: () {
                            showCustomDialog(context);
                          },
                          child: Container(
                            height: 26.h,
                            width: 26.w,
                            padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Image.asset(
                              "assets/images/ic_language.png",
                              height: 16,
                              color: ThemeColors.greenblack,
                            ),
                          )))
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 230.w,
                margin: const EdgeInsets.symmetric(horizontal: 6,vertical: 6 ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: ThemeColors.greenblack,
                  labelColor: Colors.white,
                  indicatorColor: ThemeColors.greenblack,
                  indicatorWeight: 2,
                  indicator: BoxDecoration(
                    color: ThemeColors.greenblack,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  controller: controller.tabController,
                  tabs:   [
                    Tab(
                        child:  Center(
                          child: Text(
                            context.localeString('new'),
                            style: TextStyle(
                                fontSize:14),
                          ),
                        )),
                    Tab(
                        child: Center(
                          child: Text(
                            context.localeString('other'),
                            style: TextStyle(
                                fontSize:14),
                          ),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: const [
                    NewOrderScreen(),
                    OtherOrderScreen()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
