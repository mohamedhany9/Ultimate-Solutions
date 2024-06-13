// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  Data data;
  Result result;

  LoginModel({
    required this.data,
    required this.result,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    data: Data.fromJson(json["Data"]),
    result: Result.fromJson(json["Result"]),
  );

  Map<String, dynamic> toJson() => {
    "Data": data.toJson(),
    "Result": result.toJson(),
  };
}

class Data {
  String deliveryName;

  Data({
    required this.deliveryName,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    deliveryName: json["DeliveryName"],
  );

  Map<String, dynamic> toJson() => {
    "DeliveryName": deliveryName,
  };
}

class Result {
  int errNo;
  String errMsg;

  Result({
    required this.errNo,
    required this.errMsg,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    errNo: json["ErrNo"],
    errMsg: json["ErrMsg"],
  );

  Map<String, dynamic> toJson() => {
    "ErrNo": errNo,
    "ErrMsg": errMsg,
  };
}
