import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions/colors/colors.dart';
import 'package:ultimate_solutions/screen/home_screen/domin/home_controller.dart';
import 'package:ultimate_solutions/styles/styles_manager.dart';

class OtherOrderScreen extends GetView<HomeController>  {
  const OtherOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller)  {
        return controller.loading==false ? Center(child: CircularProgressIndicator()): ListView.builder(
            itemCount: controller.otherordersModel!.data.deliveryBills.length,
            itemBuilder: (context,index){
              return Stack(
                children: [
                  Container(
                    height: 100.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 5.h),
                    // padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 16.w),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(3, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Status",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,color: ThemeColors.gry)),
                              Text("Delivering",style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 16.sp,color: ThemeColors.greenblack)),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: ThemeColors.gry,
                          thickness: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Total price",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,color: ThemeColors.gry)),
                              Text("${double.parse(controller.otherordersModel!.data.deliveryBills[index].billAmt).floorToDouble()} LE",style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 16.sp,color: ThemeColors.greenblack)),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: ThemeColors.gry,
                          thickness: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Date",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,color: ThemeColors.gry)),
                              Text(controller.otherordersModel!.data.deliveryBills[index].billDate,style: AppTextStyle.montserraSemiBold.copyWith(fontSize: 16.sp,color: ThemeColors.greenblack)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: ThemeColors.greenblack,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Order Details",style: AppTextStyle.montserraRegular.copyWith(fontSize: 10.sp,color: ThemeColors.white)),
                                SizedBox(height: 5.h,),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20.w,
                    top: 5.h,
                    child:  Text("#${controller.otherordersModel!.data.deliveryBills[index].billNo}",style: AppTextStyle.montserraRegular.copyWith(fontSize: 12.sp,color: ThemeColors.gry)),)
                ],
              );
            });
      }
    );
  }
}
