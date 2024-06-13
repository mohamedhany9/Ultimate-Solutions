import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions/app/api_links.dart';
import 'package:ultimate_solutions/model/order_model.dart';
import 'package:dio/dio.dart'as dios;



class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController tabController;
  bool loading = false;


  OrderModel? newordersModel;

  Future NewOrderMethod() async {
    var json =  {
      "Value": {
        "P_DLVRY_NO": "1010",
        "P_LANG_NO": "1",
        "P_BILL_SRL": "",
        "P_PRCSSD_FLG": "0"
      }
    };
    dios.Response response =
    await dios.Dio().post(ApiCommenLinks.baseUrl+ApiLoginLinks.orders,
      data: jsonEncode(json),
    );

    if(response.statusCode == 200)
    {
      OrderModel data = OrderModel.fromJson(response.data);
      newordersModel = data;
      loading = true;
      update();
    }
    else{
      Fluttertoast.showToast(
          msg: "Data Invalid",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          backgroundColor: Colors.white);
    }
  }

  OrderModel? otherordersModel;
  Future OtherOrderMethod() async {
    var json =  {
      "Value": {
        "P_DLVRY_NO": "1010",
        "P_LANG_NO": "1",
        "P_BILL_SRL": "",
        "P_PRCSSD_FLG": "1"
      }
    };
    dios.Response response =
    await dios.Dio().post(ApiCommenLinks.baseUrl+ApiLoginLinks.orders,
      data: jsonEncode(json),
    );

    if(response.statusCode == 200)
    {
      OrderModel data = OrderModel.fromJson(response.data);
      otherordersModel = data;
      loading = true;
      update();
    }
    else{
      Fluttertoast.showToast(
          msg: "Data Invalid",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          backgroundColor: Colors.white);
    }
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  void onInit() {
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    OtherOrderMethod();
    NewOrderMethod();
    super.onInit();
  }

  }

