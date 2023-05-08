import 'dart:convert';

import 'package:zk_flutter_douban/generated/json/base/json_field.dart';
import 'package:zk_flutter_douban/generated/json/home_notes_model.g.dart';

@JsonSerializable()
class HomeNotesModel {
	List<HomeNotesList>? list;
	List<List<HomeNotesTopicsHomeNotesTopics>>? topics;
	int? end;
	String? btmid;

	HomeNotesModel();

	factory HomeNotesModel.fromJson(Map<String, dynamic> json) => $HomeNotesModelFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesModelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesList {
	int? type;
	HomeNotesListActivity? activity;
	HomeNotesListNote? note;
	String? jumpUrl;

	HomeNotesList();

	factory HomeNotesList.fromJson(Map<String, dynamic> json) => $HomeNotesListFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesListActivity {
	int? id;
	String? image;
	@JSONField(name: "image_h")
	int? imageH;
	@JSONField(name: "image_w")
	int? imageW;
	String? name;
	HomeNotesListActivityAuthor? author;
	@JSONField(name: "action_url")
	String? actionUrl;
	String? attend;
	int? sortnum;
	@JSONField(name: "action_title")
	String? actionTitle;
	@JSONField(name: "action_icon")
	String? actionIcon;

	HomeNotesListActivity();

	factory HomeNotesListActivity.fromJson(Map<String, dynamic> json) => $HomeNotesListActivityFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesListActivityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesListActivityAuthor {
	int? id;
	String? n;
	int? v;
	@JSONField(name: "verified_image")
	String? verifiedImage;
	@JSONField(name: "progress_image")
	String? progressImage;
	String? p;
	int? lvl;
	@JSONField(name: "is_prime")
	bool? isPrime;
	int? relationship;
	String? title;
	@JSONField(name: "followers_count_text")
	String? followersCountText;
	@JSONField(name: "recipes_count_text")
	String? recipesCountText;
	int? lv;

	HomeNotesListActivityAuthor();

	factory HomeNotesListActivityAuthor.fromJson(Map<String, dynamic> json) => $HomeNotesListActivityAuthorFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesListActivityAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesListNote {
	@JSONField(name: "like_count")
	int? likeCount;
	@JSONField(name: "like_state")
	int? likeState;
	@JSONField(name: "favo_state")
	int? favoState;
	@JSONField(name: "favo_count")
	String? favoCount;
	HomeNotesListNoteAuthor? author;
	String? id;
	String? title;
	@JSONField(name: "image_u")
	String? imageU;
	@JSONField(name: "image_w")
	String? imageW;
	@JSONField(name: "image_h")
	String? imageH;
	String? publishtime;
	@JSONField(name: "media_type")
	int? mediaType;
	@JSONField(name: "image_u_gif")
	String? imageUGif;
	@JSONField(name: "action_url")
	String? actionUrl;
	@JSONField(name: "straight_text")
	String? straightText;
	String? recall;
	@JSONField(name: "year_text")
	String? yearText;
	@JSONField(name: "month_text")
	String? monthText;
	@JSONField(name: "day_text")
	String? dayText;
	@JSONField(name: "video_url")
	String? videoUrl;

	HomeNotesListNote();

	factory HomeNotesListNote.fromJson(Map<String, dynamic> json) => $HomeNotesListNoteFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesListNoteToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesListNoteAuthor {
	String? id;
	String? n;
	int? v;
	@JSONField(name: "verified_image")
	String? verifiedImage;
	@JSONField(name: "progress_image")
	String? progressImage;
	String? p;
	int? lvl;
	@JSONField(name: "is_prime")
	bool? isPrime;
	int? relationship;
	String? title;
	@JSONField(name: "followers_count_text")
	String? followersCountText;
	@JSONField(name: "recipes_count_text")
	String? recipesCountText;
	int? lv;

	HomeNotesListNoteAuthor();

	factory HomeNotesListNoteAuthor.fromJson(Map<String, dynamic> json) => $HomeNotesListNoteAuthorFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesListNoteAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeNotesTopicsHomeNotesTopics {
	@JSONField(name: "content_count")
	int? contentCount;
	String? id;
	String? name;
	String? description;
	String? icon;
	String? image;
	@JSONField(name: "cover_image")
	String? coverImage;

	HomeNotesTopicsHomeNotesTopics();

	factory HomeNotesTopicsHomeNotesTopics.fromJson(Map<String, dynamic> json) => $HomeNotesTopicsHomeNotesTopicsFromJson(json);

	Map<String, dynamic> toJson() => $HomeNotesTopicsHomeNotesTopicsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}