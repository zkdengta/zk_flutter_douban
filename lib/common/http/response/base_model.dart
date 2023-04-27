import '../../../generated/json/base/json_convert_content.dart';

class BaseModel<T> {
  // int? code;
  // String? message;
  // T? data;
  //
  // BaseModel(this.code, this.message, this.data);
  //
  // BaseModel.fromJson(Map<String, dynamic> json)
  //     : code = json.containsKey('code') ? json['code'] : (json.containsKey('state') ? ((json['state'] == "success") ? 200 : -1) : -1),
  //       message = json.containsKey('message') ? json['message'] : "",
  //       data = json.containsKey('data') ? json['data'] : (json.containsKey('result') ? json['result'] : null);

  int? code;
  String? message;
  T? data;

  BaseModel(this.code, this.message, this.data);

  BaseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && json['data'] != 'null') {
      if(T.toString() == "string"){
        data = json['data'] as T;
      }else if (T.toString() == 'Map<dynamic, dynamic>'){
        data = json['data'] as T;
      }else{
        final T? data = jsonConvert.convert<T>(json['data']);
        if (data != null) {
          this.data = data;
        }
      }
    }
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data;
    }
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
