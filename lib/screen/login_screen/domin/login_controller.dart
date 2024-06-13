import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_solutions/app/api_links.dart';
import 'package:ultimate_solutions/model/login_model.dart';
import 'package:ultimate_solutions/routes/app_pages.dart';
import 'package:dio/dio.dart'as dios;

class LoginController extends GetxController {

  SharedPreferences? preferences;
  Future<void> initializePreference() async{
    this.preferences = await SharedPreferences.getInstance();
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  Future LoginMethod() async {
    var json =  {
      "Value": {
        "P_LANG_NO": "1",
        "P_DLVRY_NO": emailController.text,
        "P_PSSWRD": passwordController.text
      }
    };
    dios.Response response =
    await dios.Dio().post(ApiCommenLinks.baseUrl+ApiLoginLinks.login,
        data: jsonEncode(json),
        // options: dios.Options(
        //   validateStatus: (status) => true,
        //   headers: {
        //     "Accept": "application/json",
        //     'Content-Type': 'multipart/form-data',
        //   },
        // )
    );

    if(response.data["Result"]["ErrNo"] == 0)
    {
      LoginModel data = LoginModel.fromJson(response.data);

      preferences?.setBool("login", false);

        Fluttertoast.showToast(
            msg: data.result.errMsg,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            textColor: Colors.black,
            backgroundColor: Colors.white);

        Get.toNamed(Routes.home);
    }
    else{
      Fluttertoast.showToast(
          msg: "Email or Password Invalid",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          backgroundColor: Colors.white);
    }
  }

  @override
  void onInit() {
    initializePreference().whenComplete((){
      update();
    });
    super.onInit();
  }



  }

