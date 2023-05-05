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
	int? id;
	String? title;
	@JSONField(name: "image_u")
	String? imageU;
	@JSONField(name: "image_w")
	int? imageW;
	@JSONField(name: "image_h")
	int? imageH;
	String? publishtime;
	@JSONField(name: "media_type")
	int? mediaType;
	@JSONField(name: "image_u_gif")
	String? imageUGif;
	@JSONField(name: "action_url")
	String? actionUrl;
	@JSONField(name: "straight_text")
	String? straightText;
	@JSONField(name: "video_cover_width")
	String? videoCoverWidth;
	@JSONField(name: "video_cover")
	String? videoCover;
	@JSONField(name: "video_cover_height")
	String? videoCoverHeight;
	@JSONField(name: "video_url")
	String? videoUrl;
	@JSONField(name: "video_cover_frame")
	int? videoCoverFrame;
	@JSONField(name: "cover_width")
	String? coverWidth;
	@JSONField(name: "cover_height")
	String? coverHeight;
	String? recall;
	@JSONField(name: "year_text")
	String? yearText;
	@JSONField(name: "month_text")
	String? monthText;
	@JSONField(name: "day_text")
	String? dayText;

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