// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  Data data;
  Result result;

  OrderModel({
    required this.data,
    required this.result,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    data: Data.fromJson(json["Data"]),
    result: Result.fromJson(json["Result"]),
  );

  Map<String, dynamic> toJson() => {
    "Data": data.toJson(),
    "Result": result.toJson(),
  };
}

class Data {
  List<DeliveryBill> deliveryBills;

  Data({
    required this.deliveryBills,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    deliveryBills: List<DeliveryBill>.from(json["DeliveryBills"].map((x) => DeliveryBill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "DeliveryBills": List<dynamic>.from(deliveryBills.map((x) => x.toJson())),
  };
}

class DeliveryBill {
  String billAmt;
  String billDate;
  String billNo;
  String billSrl;
  String billTime;
  String billType;
  String cstmrAddrss;
  String cstmrAprtmntNo;
  String cstmrBuildNo;
  String cstmrFloorNo;
  String cstmrNm;
  String dlvryAmt;
  String dlvryStatusFlg;
  String latitude;
  String longitude;
  String mobileNo;
  String rgnNm;
  String taxAmt;

  DeliveryBill({
    required this.billAmt,
    required this.billDate,
    required this.billNo,
    required this.billSrl,
    required this.billTime,
    required this.billType,
    required this.cstmrAddrss,
    required this.cstmrAprtmntNo,
    required this.cstmrBuildNo,
    required this.cstmrFloorNo,
    required this.cstmrNm,
    required this.dlvryAmt,
    required this.dlvryStatusFlg,
    required this.latitude,
    required this.longitude,
    required this.mobileNo,
    required this.rgnNm,
    required this.taxAmt,
  });

  factory DeliveryBill.fromJson(Map<String, dynamic> json) => DeliveryBill(
    billAmt: json["BILL_AMT"],
    billDate: json["BILL_DATE"],
    billNo: json["BILL_NO"],
    billSrl: json["BILL_SRL"],
    billTime: json["BILL_TIME"],
    billType: json["BILL_TYPE"],
    cstmrAddrss: json["CSTMR_ADDRSS"],
    cstmrAprtmntNo: json["CSTMR_APRTMNT_NO"],
    cstmrBuildNo: json["CSTMR_BUILD_NO"],
    cstmrFloorNo: json["CSTMR_FLOOR_NO"],
    cstmrNm: json["CSTMR_NM"],
    dlvryAmt: json["DLVRY_AMT"],
    dlvryStatusFlg: json["DLVRY_STATUS_FLG"],
    latitude: json["LATITUDE"],
    longitude: json["LONGITUDE"],
    mobileNo: json["MOBILE_NO"],
    rgnNm: json["RGN_NM"],
    taxAmt: json["TAX_AMT"],
  );

  Map<String, dynamic> toJson() => {
    "BILL_AMT": billAmt,
    "BILL_DATE": billDate,
    "BILL_NO": billNo,
    "BILL_SRL": billSrl,
    "BILL_TIME": billTime,
    "BILL_TYPE": billType,
    "CSTMR_ADDRSS": cstmrAddrss,
    "CSTMR_APRTMNT_NO": cstmrAprtmntNo,
    "CSTMR_BUILD_NO": cstmrBuildNo,
    "CSTMR_FLOOR_NO": cstmrFloorNo,
    "CSTMR_NM": cstmrNm,
    "DLVRY_AMT": dlvryAmt,
    "DLVRY_STATUS_FLG": dlvryStatusFlg,
    "LATITUDE": latitude,
    "LONGITUDE": longitude,
    "MOBILE_NO": mobileNo,
    "RGN_NM": rgnNm,
    "TAX_AMT": taxAmt,
  };
}

class Result {
  String errMsg;
  int errNo;

  Result({
    required this.errMsg,
    required this.errNo,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    errMsg: json["ErrMsg"],
    errNo: json["ErrNo"],
  );

  Map<String, dynamic> toJson() => {
    "ErrMsg": errMsg,
    "ErrNo": errNo,
  };
}
