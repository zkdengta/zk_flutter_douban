import 'package:zk_flutter_douban/generated/json/base/json_convert_content.dart';
import 'package:zk_flutter_douban/modes/home_notes_model.dart';

HomeNotesModel $HomeNotesModelFromJson(Map<String, dynamic> json) {
	final HomeNotesModel homeNotesModel = HomeNotesModel();
	final List<HomeNotesList>? list = jsonConvert.convertListNotNull<HomeNotesList>(json['list']);
	if (list != null) {
		homeNotesModel.list = list;
	}
	final List<List<HomeNotesTopicsHomeNotesTopics>>? topics = jsonConvert.convertListNotNull<List<HomeNotesTopicsHomeNotesTopics>>(json['topics']);
	if (topics != null) {
		homeNotesModel.topics = topics;
	}
	final int? end = jsonConvert.convert<int>(json['end']);
	if (end != null) {
		homeNotesModel.end = end;
	}
	final String? btmid = jsonConvert.convert<String>(json['btmid']);
	if (btmid != null) {
		homeNotesModel.btmid = btmid;
	}
	return homeNotesModel;
}

Map<String, dynamic> $HomeNotesModelToJson(HomeNotesModel entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	data['topics'] =  entity.topics;
	data['end'] = entity.end;
	data['btmid'] = entity.btmid;
	return data;
}

HomeNotesList $HomeNotesListFromJson(Map<String, dynamic> json) {
	final HomeNotesList homeNotesList = HomeNotesList();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		homeNotesList.type = type;
	}
	final HomeNotesListNote? note = jsonConvert.convert<HomeNotesListNote>(json['note']);
	if (note != null) {
		homeNotesList.note = note;
	}
	final String? jumpUrl = jsonConvert.convert<String>(json['jumpUrl']);
	if (jumpUrl != null) {
		homeNotesList.jumpUrl = jumpUrl;
	}
	return homeNotesList;
}

Map<String, dynamic> $HomeNotesListToJson(HomeNotesList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['note'] = entity.note?.toJson();
	data['jumpUrl'] = entity.jumpUrl;
	return data;
}

HomeNotesListNote $HomeNotesListNoteFromJson(Map<String, dynamic> json) {
	final HomeNotesListNote homeNotesListNote = HomeNotesListNote();
	final int? likeCount = jsonConvert.convert<int>(json['like_count']);
	if (likeCount != null) {
		homeNotesListNote.likeCount = likeCount;
	}
	final int? likeState = jsonConvert.convert<int>(json['like_state']);
	if (likeState != null) {
		homeNotesListNote.likeState = likeState;
	}
	final int? favoState = jsonConvert.convert<int>(json['favo_state']);
	if (favoState != null) {
		homeNotesListNote.favoState = favoState;
	}
	final String? favoCount = jsonConvert.convert<String>(json['favo_count']);
	if (favoCount != null) {
		homeNotesListNote.favoCount = favoCount;
	}
	final HomeNotesListNoteAuthor? author = jsonConvert.convert<HomeNotesListNoteAuthor>(json['author']);
	if (author != null) {
		homeNotesListNote.author = author;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeNotesListNote.id = id;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeNotesListNote.title = title;
	}
	final String? imageU = jsonConvert.convert<String>(json['image_u']);
	if (imageU != null) {
		homeNotesListNote.imageU = imageU;
	}
	final int? imageW = jsonConvert.convert<int>(json['image_w']);
	if (imageW != null) {
		homeNotesListNote.imageW = imageW;
	}
	final int? imageH = jsonConvert.convert<int>(json['image_h']);
	if (imageH != null) {
		homeNotesListNote.imageH = imageH;
	}
	final String? publishtime = jsonConvert.convert<String>(json['publishtime']);
	if (publishtime != null) {
		homeNotesListNote.publishtime = publishtime;
	}
	final int? mediaType = jsonConvert.convert<int>(json['media_type']);
	if (mediaType != null) {
		homeNotesListNote.mediaType = mediaType;
	}
	final String? imageUGif = jsonConvert.convert<String>(json['image_u_gif']);
	if (imageUGif != null) {
		homeNotesListNote.imageUGif = imageUGif;
	}
	final String? actionUrl = jsonConvert.convert<String>(json['action_url']);
	if (actionUrl != null) {
		homeNotesListNote.actionUrl = actionUrl;
	}
	final String? straightText = jsonConvert.convert<String>(json['straight_text']);
	if (straightText != null) {
		homeNotesListNote.straightText = straightText;
	}
	final String? videoCoverWidth = jsonConvert.convert<String>(json['video_cover_width']);
	if (videoCoverWidth != null) {
		homeNotesListNote.videoCoverWidth = videoCoverWidth;
	}
	final String? videoCover = jsonConvert.convert<String>(json['video_cover']);
	if (videoCover != null) {
		homeNotesListNote.videoCover = videoCover;
	}
	final String? videoCoverHeight = jsonConvert.convert<String>(json['video_cover_height']);
	if (videoCoverHeight != null) {
		homeNotesListNote.videoCoverHeight = videoCoverHeight;
	}
	final String? videoUrl = jsonConvert.convert<String>(json['video_url']);
	if (videoUrl != null) {
		homeNotesListNote.videoUrl = videoUrl;
	}
	final int? videoCoverFrame = jsonConvert.convert<int>(json['video_cover_frame']);
	if (videoCoverFrame != null) {
		homeNotesListNote.videoCoverFrame = videoCoverFrame;
	}
	final String? coverWidth = jsonConvert.convert<String>(json['cover_width']);
	if (coverWidth != null) {
		homeNotesListNote.coverWidth = coverWidth;
	}
	final String? coverHeight = jsonConvert.convert<String>(json['cover_height']);
	if (coverHeight != null) {
		homeNotesListNote.coverHeight = coverHeight;
	}
	final String? recall = jsonConvert.convert<String>(json['recall']);
	if (recall != null) {
		homeNotesListNote.recall = recall;
	}
	final String? yearText = jsonConvert.convert<String>(json['year_text']);
	if (yearText != null) {
		homeNotesListNote.yearText = yearText;
	}
	final String? monthText = jsonConvert.convert<String>(json['month_text']);
	if (monthText != null) {
		homeNotesListNote.monthText = monthText;
	}
	final String? dayText = jsonConvert.convert<String>(json['day_text']);
	if (dayText != null) {
		homeNotesListNote.dayText = dayText;
	}
	return homeNotesListNote;
}

Map<String, dynamic> $HomeNotesListNoteToJson(HomeNotesListNote entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['like_count'] = entity.likeCount;
	data['like_state'] = entity.likeState;
	data['favo_state'] = entity.favoState;
	data['favo_count'] = entity.favoCount;
	data['author'] = entity.author?.toJson();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['image_u'] = entity.imageU;
	data['image_w'] = entity.imageW;
	data['image_h'] = entity.imageH;
	data['publishtime'] = entity.publishtime;
	data['media_type'] = entity.mediaType;
	data['image_u_gif'] = entity.imageUGif;
	data['action_url'] = entity.actionUrl;
	data['straight_text'] = entity.straightText;
	data['video_cover_width'] = entity.videoCoverWidth;
	data['video_cover'] = entity.videoCover;
	data['video_cover_height'] = entity.videoCoverHeight;
	data['video_url'] = entity.videoUrl;
	data['video_cover_frame'] = entity.videoCoverFrame;
	data['cover_width'] = entity.coverWidth;
	data['cover_height'] = entity.coverHeight;
	data['recall'] = entity.recall;
	data['year_text'] = entity.yearText;
	data['month_text'] = entity.monthText;
	data['day_text'] = entity.dayText;
	return data;
}

HomeNotesListNoteAuthor $HomeNotesListNoteAuthorFromJson(Map<String, dynamic> json) {
	final HomeNotesListNoteAuthor homeNotesListNoteAuthor = HomeNotesListNoteAuthor();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeNotesListNoteAuthor.id = id;
	}
	final String? n = jsonConvert.convert<String>(json['n']);
	if (n != null) {
		homeNotesListNoteAuthor.n = n;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		homeNotesListNoteAuthor.v = v;
	}
	final String? verifiedImage = jsonConvert.convert<String>(json['verified_image']);
	if (verifiedImage != null) {
		homeNotesListNoteAuthor.verifiedImage = verifiedImage;
	}
	final String? progressImage = jsonConvert.convert<String>(json['progress_image']);
	if (progressImage != null) {
		homeNotesListNoteAuthor.progressImage = progressImage;
	}
	final String? p = jsonConvert.convert<String>(json['p']);
	if (p != null) {
		homeNotesListNoteAuthor.p = p;
	}
	final int? lvl = jsonConvert.convert<int>(json['lvl']);
	if (lvl != null) {
		homeNotesListNoteAuthor.lvl = lvl;
	}
	final bool? isPrime = jsonConvert.convert<bool>(json['is_prime']);
	if (isPrime != null) {
		homeNotesListNoteAuthor.isPrime = isPrime;
	}
	final int? relationship = jsonConvert.convert<int>(json['relationship']);
	if (relationship != null) {
		homeNotesListNoteAuthor.relationship = relationship;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeNotesListNoteAuthor.title = title;
	}
	final String? followersCountText = jsonConvert.convert<String>(json['followers_count_text']);
	if (followersCountText != null) {
		homeNotesListNoteAuthor.followersCountText = followersCountText;
	}
	final String? recipesCountText = jsonConvert.convert<String>(json['recipes_count_text']);
	if (recipesCountText != null) {
		homeNotesListNoteAuthor.recipesCountText = recipesCountText;
	}
	final int? lv = jsonConvert.convert<int>(json['lv']);
	if (lv != null) {
		homeNotesListNoteAuthor.lv = lv;
	}
	return homeNotesListNoteAuthor;
}

Map<String, dynamic> $HomeNotesListNoteAuthorToJson(HomeNotesListNoteAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['n'] = entity.n;
	data['v'] = entity.v;
	data['verified_image'] = entity.verifiedImage;
	data['progress_image'] = entity.progressImage;
	data['p'] = entity.p;
	data['lvl'] = entity.lvl;
	data['is_prime'] = entity.isPrime;
	data['relationship'] = entity.relationship;
	data['title'] = entity.title;
	data['followers_count_text'] = entity.followersCountText;
	data['recipes_count_text'] = entity.recipesCountText;
	data['lv'] = entity.lv;
	return data;
}

HomeNotesTopicsHomeNotesTopics $HomeNotesTopicsHomeNotesTopicsFromJson(Map<String, dynamic> json) {
	final HomeNotesTopicsHomeNotesTopics homeNotesTopicsHomeNotesTopics = HomeNotesTopicsHomeNotesTopics();
	final int? contentCount = jsonConvert.convert<int>(json['content_count']);
	if (contentCount != null) {
		homeNotesTopicsHomeNotesTopics.contentCount = contentCount;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeNotesTopicsHomeNotesTopics.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		homeNotesTopicsHomeNotesTopics.name = name;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		homeNotesTopicsHomeNotesTopics.description = description;
	}
	final String? icon = jsonConvert.convert<String>(json['icon']);
	if (icon != null) {
		homeNotesTopicsHomeNotesTopics.icon = icon;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		homeNotesTopicsHomeNotesTopics.image = image;
	}
	final String? coverImage = jsonConvert.convert<String>(json['cover_image']);
	if (coverImage != null) {
		homeNotesTopicsHomeNotesTopics.coverImage = coverImage;
	}
	return homeNotesTopicsHomeNotesTopics;
}

Map<String, dynamic> $HomeNotesTopicsHomeNotesTopicsToJson(HomeNotesTopicsHomeNotesTopics entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['content_count'] = entity.contentCount;
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['description'] = entity.description;
	data['icon'] = entity.icon;
	data['image'] = entity.image;
	data['cover_image'] = entity.coverImage;
	return data;
}