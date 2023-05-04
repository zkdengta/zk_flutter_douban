import 'dart:convert';

import 'package:zk_flutter_douban/generated/json/base/json_field.dart';
import 'package:zk_flutter_douban/generated/json/home_recommend_model.g.dart';

@JsonSerializable()
class HomeRecommendModel {
	List<HomeRecommendBanner>? banner;
	List<HomeRecommendList>? list;
	String? murl;
	String? flt;
	String? slt;

	HomeRecommendModel();

	factory HomeRecommendModel.fromJson(Map<String, dynamic> json) => $HomeRecommendModelFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendModelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendBanner {
	int? id;
	int? ch;
	String? t;
	String? url;
	String? i;

	HomeRecommendBanner();

	factory HomeRecommendBanner.fromJson(Map<String, dynamic> json) => $HomeRecommendBannerFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendBannerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendList {
	int? type;
	HomeRecommendListR? r;

	HomeRecommendList();

	factory HomeRecommendList.fromJson(Map<String, dynamic> json) => $HomeRecommendListFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendListR {
	int? id;
	String? n;
	@JSONField(name: "trim_title")
	String? trimTitle;
	String? img;
	int? pw;
	int? ph;
	String? vu;
	String? vfurl;
	HomeRecommendListRA? a;
	String? stdname;
	String? gif;
	String? p;
	String? vc;
	int? fc;
	@JSONField(name: "collect_count_text")
	String? collectCountText;
	@JSONField(name: "collect_status")
	int? collectStatus;
	@JSONField(name: "collect_users")
	List<HomeRecommendListRCollectUsers>? collectUsers;
	String? recall;
	List<HomeRecommendListREvents>? events;

	HomeRecommendListR();

	factory HomeRecommendListR.fromJson(Map<String, dynamic> json) => $HomeRecommendListRFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendListRToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendListRA {
	int? id;
	String? n;
	int? v;
	String? p;
	int? lvl;
	@JSONField(name: "is_prime")
	bool? isPrime;
	@JSONField(name: "verified_image")
	String? verifiedImage;
	@JSONField(name: "progress_image")
	String? progressImage;
	@JSONField(name: "verified_url")
	String? verifiedUrl;

	HomeRecommendListRA();

	factory HomeRecommendListRA.fromJson(Map<String, dynamic> json) => $HomeRecommendListRAFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendListRAToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendListRCollectUsers {
	int? id;
	String? n;
	String? p;
	int? lv;
	int? lvl;
	@JSONField(name: "is_prime")
	bool? isPrime;
	@JSONField(name: "verified_image")
	String? verifiedImage;
	int? v;

	HomeRecommendListRCollectUsers();

	factory HomeRecommendListRCollectUsers.fromJson(Map<String, dynamic> json) => $HomeRecommendListRCollectUsersFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendListRCollectUsersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendListREvents {
	String? c;
	String? u;
	String? id;

	HomeRecommendListREvents();

	factory HomeRecommendListREvents.fromJson(Map<String, dynamic> json) => $HomeRecommendListREventsFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendListREventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}