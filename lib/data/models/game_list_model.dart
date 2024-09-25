class AllGameModel {
  int? status;
  bool? success;
  Data? data;
  String? message;

  AllGameModel({this.status, this.success, this.data, this.message});

  AllGameModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  List<Details>? details;

  Data({this.details});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['details'] != null) {
      details = <Details>[];
      json['details'].forEach((v) {
        details!.add(new Details.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.details != null) {
      data['details'] = this.details!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String? sId;
  String? providerName;
  String? providerResult;
  int? resultStatus;
  String? displayText;
  String? colorCode;

  Details(
      {this.sId,
        this.providerName,
        this.providerResult,
        this.resultStatus,
        this.displayText,
        this.colorCode});

  Details.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    providerName = json['providerName'];
    providerResult = json['providerResult'];
    resultStatus = json['resultStatus'];
    displayText = json['displayText'];
    colorCode = json['colorCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['providerName'] = this.providerName;
    data['providerResult'] = this.providerResult;
    data['resultStatus'] = this.resultStatus;
    data['displayText'] = this.displayText;
    data['colorCode'] = this.colorCode;
    return data;
  }
}