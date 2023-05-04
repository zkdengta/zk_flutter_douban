// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:zk_flutter_douban/modes/home_recommend_model.dart';
import 'package:zk_flutter_douban/modes/test_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);

class JsonConvert {
	static final Map<String, JsonConvertFunction> convertFuncMap = {
		(HomeRecommendModel).toString(): HomeRecommendModel.fromJson,
		(HomeRecommendBanner).toString(): HomeRecommendBanner.fromJson,
		(HomeRecommendList).toString(): HomeRecommendList.fromJson,
		(HomeRecommendListR).toString(): HomeRecommendListR.fromJson,
		(HomeRecommendListRA).toString(): HomeRecommendListRA.fromJson,
		(HomeRecommendListRCollectUsers).toString(): HomeRecommendListRCollectUsers.fromJson,
		(HomeRecommendListREvents).toString(): HomeRecommendListREvents.fromJson,
		(TestEntity).toString(): TestEntity.fromJson,
	};

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e,enumConvert: enumConvert)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

List<T>? convertListNotNull<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => _asT<T>(e,enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<HomeRecommendModel>[] is M){
			return data.map<HomeRecommendModel>((Map<String, dynamic> e) => HomeRecommendModel.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendBanner>[] is M){
			return data.map<HomeRecommendBanner>((Map<String, dynamic> e) => HomeRecommendBanner.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendList>[] is M){
			return data.map<HomeRecommendList>((Map<String, dynamic> e) => HomeRecommendList.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendListR>[] is M){
			return data.map<HomeRecommendListR>((Map<String, dynamic> e) => HomeRecommendListR.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendListRA>[] is M){
			return data.map<HomeRecommendListRA>((Map<String, dynamic> e) => HomeRecommendListRA.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendListRCollectUsers>[] is M){
			return data.map<HomeRecommendListRCollectUsers>((Map<String, dynamic> e) => HomeRecommendListRCollectUsers.fromJson(e)).toList() as M;
		}
		if(<HomeRecommendListREvents>[] is M){
			return data.map<HomeRecommendListREvents>((Map<String, dynamic> e) => HomeRecommendListREvents.fromJson(e)).toList() as M;
		}
		if(<TestEntity>[] is M){
			return data.map<TestEntity>((Map<String, dynamic> e) => TestEntity.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.convert<M>(json);
		}
	}
}