import 'dart:convert';

import 'package:zk_flutter_douban/generated/json/base/json_field.dart';
import 'package:zk_flutter_douban/generated/json/test_entity.g.dart';

@JsonSerializable()
class TestEntity {
	int? total;
	List<dynamic>? data;

	TestEntity();

	factory TestEntity.fromJson(Map<String, dynamic> json) => $TestEntityFromJson(json);

	Map<String, dynamic> toJson() => $TestEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}