import 'package:zk_flutter_douban/generated/json/base/json_convert_content.dart';
import 'package:zk_flutter_douban/modes/test_entity.dart';

TestEntity $TestEntityFromJson(Map<String, dynamic> json) {
	final TestEntity testEntity = TestEntity();
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		testEntity.total = total;
	}
	final List<dynamic>? data = jsonConvert.convertListNotNull<dynamic>(json['data']);
	if (data != null) {
		testEntity.data = data;
	}
	return testEntity;
}

Map<String, dynamic> $TestEntityToJson(TestEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['total'] = entity.total;
	data['data'] =  entity.data;
	return data;
}