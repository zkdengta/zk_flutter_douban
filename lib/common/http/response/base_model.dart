import 'package:zk_flutter_douban/common/http/http_config.dart';

import '../../../generated/json/base/json_convert_content.dart';

class BaseModel<T> {

  int? code;
  String? state;
  T? result;

  BaseModel(int? code,this.state, this.result){
    if(state == "success"){
      code = HttpConfig.successCode;
    }else{
      code = -1;
    }
  }

  BaseModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null && json['result'] != 'null') {
      if(T.toString() == "string"){
        result = json['result'] as T;
      }else if (T.toString() == 'Map<dynamic, dynamic>'){
        result = json['result'] as T;
      }else{
        final T? result = jsonConvert.convert<T>(json['result']);
        if (result != null) {
          this.result = result;
        }
      }
    }
    state = json['state'];
    if(state == "success"){
      code = HttpConfig.successCode;
    }else{
      code = -1;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result;
    }
    data['code'] = code;
    data['state'] = state;
    return data;
  }

  // int? code;
  // String? message;
  // T? data;
  //
  // BaseModel(this.code, this.message, this.data);
  //
  // BaseModel.fromJson(Map<String, dynamic> json) {
  //   if (json['data'] != null && json['data'] != 'null') {
  //     if(T.toString() == "string"){
  //       data = json['data'] as T;
  //     }else if (T.toString() == 'Map<dynamic, dynamic>'){
  //       data = json['data'] as T;
  //     }else{
  //       final T? data = jsonConvert.convert<T>(json['data']);
  //       if (data != null) {
  //         this.data = data;
  //       }
  //     }
  //   }
  //   code = json['code'];
  //   message = json['message'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   if (this.data != null) {
  //     data['data'] = this.data;
  //   }
  //   data['code'] = code;
  //   data['message'] = message;
  //   return data;
  // }
}
