import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:zk_flutter_douban/common/http/http_config.dart';
import 'package:zk_flutter_douban/common/http/response/base_model.dart';
import 'package:zk_flutter_douban/utils/logger_util.dart';

import 'exception.dart';

/// http请求单例类
class HttpRequest{
  // 工厂构造方法
  factory HttpRequest() => _instance;
  // 初始化一个单例实例
  static final HttpRequest _instance = HttpRequest._internal();
  // dio 实例
  Dio? dio;
  // 内部构造方法
  HttpRequest._internal(){
    if(dio == null){
      BaseOptions baseOptions = BaseOptions(
        baseUrl: HttpConfig.baseUrl,
        connectTimeout: HttpConfig.connectTimeout,
        receiveTimeout: HttpConfig.receiveTimeout,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      // 没有实例 则创建之
      dio = Dio(baseOptions);
      dio!.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseHeader: true));
    }
  }

  Future<BaseModel<T>> request<T>(
      String url, {
        String method = "Get",
        Map<String, dynamic>? queryParameters,
        data,
        Map<String, dynamic>? headers,
        bool Function(ApiException)? onError,
      }) async {
    try {
      Options options = Options()
        ..method = method
        ..headers = headers;

      data = _convertRequestData(data);

      Response response = await dio!.request(url,
          queryParameters: queryParameters, data: data, options: options);
      return _handleResponse<T>(response);
    } catch (e) {
      var exception = ApiException.from(e);
      if(onError?.call(exception) != true){
        throw exception;
      }
    }
    return BaseModel(-1,"数据解析失败",null);
  }

  _convertRequestData(data) {
    if (data != null) {
      data = jsonDecode(jsonEncode(data));
    }
    return data;
  }

  Future<BaseModel<T>> get<T>(
      String url, {
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        bool showLoading = true,
        bool Function(ApiException)? onError,
      }) {
    return request(url,
        queryParameters: queryParameters,
        headers: headers,
        onError: onError);
  }

  Future<BaseModel<T>> post<T>(
      String url, {
        Map<String, dynamic>? queryParameters,
        data,
        Map<String, dynamic>? headers,
        bool showLoading = true,
        bool Function(ApiException)? onError,
      }) {
    return request(url,
        method: "POST",
        queryParameters: queryParameters,
        data: data,
        headers: headers,
        onError: onError);
  }

  Future<BaseModel<T>> delete<T>(
      String url, {
        Map<String, dynamic>? queryParameters,
        data,
        Map<String, dynamic>? headers,
        bool showLoading = true,
        bool Function(ApiException)? onError,
      }) {
    return request(url,
        method: "DELETE",
        queryParameters: queryParameters,
        data: data,
        headers: headers,
        onError: onError);
  }

  Future<BaseModel<T>> put<T>(
      String url, {
        Map<String, dynamic>? queryParameters,
        data,
        Map<String, dynamic>? headers,
        bool showLoading = true,
        bool Function(ApiException)? onError,
      }) {
    return request(url,
        method: "PUT",
        queryParameters: queryParameters,
        data: data,
        headers: headers,
        onError: onError);
  }

  ///请求响应内容处理
  BaseModel<T> _handleResponse<T>(Response response) {
    if (response.statusCode == 200) {
        LoggerUtil.e("getHomeRecommendData---"+response.data.runtimeType.toString());
        BaseModel<T> apiResponse;
        switch(response.data.runtimeType){
          case String:
            apiResponse = BaseModel<T>.fromJson(jsonDecode(response.data));
            break;
          default:
            apiResponse = BaseModel<T>.fromJson(response.data);
        }
        return apiResponse;
    } else {
      var exception = ApiException(response.statusCode, ApiException.unknownException);
      throw exception;
    }
  }
  // T? _handleResponse<T>(Response response) {
  //   if (response.statusCode == 200) {
  //     if(T.toString() == (RawData).toString()){
  //       RawData raw = RawData();
  //       raw.value = response.data;
  //       return raw as T;
  //     }else {
  //       BaseModel<T> apiResponse = BaseModel<T>.fromJson(response.data);
  //       return _handleBusinessResponse<T>(apiResponse);
  //     }
  //   } else {
  //     var exception = ApiException(response.statusCode, ApiException.unknownException);
  //     throw exception;
  //   }
  // }

  ///业务内容处理
  // T? _handleBusinessResponse<T>(BaseModel<T> response) {
  //   if (response.code == HttpConfig.successCode) {
  //     return response.data;
  //   } else {
  //     var exception = ApiException(response.code, response.message);
  //     throw exception;
  //   }
  // }

}