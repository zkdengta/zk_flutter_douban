import 'package:zk_flutter_douban/generated/json/base/json_convert_content.dart';
import 'package:zk_flutter_douban/modes/home_recommend_model.dart';

HomeRecommendModel $HomeRecommendModelFromJson(Map<String, dynamic> json) {
	final HomeRecommendModel homeRecommendModel = HomeRecommendModel();
	final List<HomeRecommendBanner>? banner = jsonConvert.convertListNotNull<HomeRecommendBanner>(json['banner']);
	if (banner != null) {
		homeRecommendModel.banner = banner;
	}
	final List<HomeRecommendList>? list = jsonConvert.convertListNotNull<HomeRecommendList>(json['list']);
	if (list != null) {
		homeRecommendModel.list = list;
	}
	final String? murl = jsonConvert.convert<String>(json['murl']);
	if (murl != null) {
		homeRecommendModel.murl = murl;
	}
	final String? flt = jsonConvert.convert<String>(json['flt']);
	if (flt != null) {
		homeRecommendModel.flt = flt;
	}
	final String? slt = jsonConvert.convert<String>(json['slt']);
	if (slt != null) {
		homeRecommendModel.slt = slt;
	}
	return homeRecommendModel;
}

Map<String, dynamic> $HomeRecommendModelToJson(HomeRecommendModel entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['banner'] =  entity.banner?.map((v) => v.toJson()).toList();
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	data['murl'] = entity.murl;
	data['flt'] = entity.flt;
	data['slt'] = entity.slt;
	return data;
}

HomeRecommendBanner $HomeRecommendBannerFromJson(Map<String, dynamic> json) {
	final HomeRecommendBanner homeRecommendBanner = HomeRecommendBanner();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeRecommendBanner.id = id;
	}
	final int? ch = jsonConvert.convert<int>(json['ch']);
	if (ch != null) {
		homeRecommendBanner.ch = ch;
	}
	final String? t = jsonConvert.convert<String>(json['t']);
	if (t != null) {
		homeRecommendBanner.t = t;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeRecommendBanner.url = url;
	}
	final String? i = jsonConvert.convert<String>(json['i']);
	if (i != null) {
		homeRecommendBanner.i = i;
	}
	return homeRecommendBanner;
}

Map<String, dynamic> $HomeRecommendBannerToJson(HomeRecommendBanner entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['ch'] = entity.ch;
	data['t'] = entity.t;
	data['url'] = entity.url;
	data['i'] = entity.i;
	return data;
}

HomeRecommendList $HomeRecommendListFromJson(Map<String, dynamic> json) {
	final HomeRecommendList homeRecommendList = HomeRecommendList();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		homeRecommendList.type = type;
	}
	final HomeRecommendListR? r = jsonConvert.convert<HomeRecommendListR>(json['r']);
	if (r != null) {
		homeRecommendList.r = r;
	}
	return homeRecommendList;
}

Map<String, dynamic> $HomeRecommendListToJson(HomeRecommendList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['r'] = entity.r?.toJson();
	return data;
}

HomeRecommendListR $HomeRecommendListRFromJson(Map<String, dynamic> json) {
	final HomeRecommendListR homeRecommendListR = HomeRecommendListR();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeRecommendListR.id = id;
	}
	final String? n = jsonConvert.convert<String>(json['n']);
	if (n != null) {
		homeRecommendListR.n = n;
	}
	final String? trimTitle = jsonConvert.convert<String>(json['trim_title']);
	if (trimTitle != null) {
		homeRecommendListR.trimTitle = trimTitle;
	}
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		homeRecommendListR.img = img;
	}
	final int? pw = jsonConvert.convert<int>(json['pw']);
	if (pw != null) {
		homeRecommendListR.pw = pw;
	}
	final int? ph = jsonConvert.convert<int>(json['ph']);
	if (ph != null) {
		homeRecommendListR.ph = ph;
	}
	final String? vu = jsonConvert.convert<String>(json['vu']);
	if (vu != null) {
		homeRecommendListR.vu = vu;
	}
	final String? vfurl = jsonConvert.convert<String>(json['vfurl']);
	if (vfurl != null) {
		homeRecommendListR.vfurl = vfurl;
	}
	final HomeRecommendListRA? a = jsonConvert.convert<HomeRecommendListRA>(json['a']);
	if (a != null) {
		homeRecommendListR.a = a;
	}
	final String? stdname = jsonConvert.convert<String>(json['stdname']);
	if (stdname != null) {
		homeRecommendListR.stdname = stdname;
	}
	final String? gif = jsonConvert.convert<String>(json['gif']);
	if (gif != null) {
		homeRecommendListR.gif = gif;
	}
	final String? p = jsonConvert.convert<String>(json['p']);
	if (p != null) {
		homeRecommendListR.p = p;
	}
	final String? vc = jsonConvert.convert<String>(json['vc']);
	if (vc != null) {
		homeRecommendListR.vc = vc;
	}
	final int? fc = jsonConvert.convert<int>(json['fc']);
	if (fc != null) {
		homeRecommendListR.fc = fc;
	}
	final String? collectCountText = jsonConvert.convert<String>(json['collect_count_text']);
	if (collectCountText != null) {
		homeRecommendListR.collectCountText = collectCountText;
	}
	final int? collectStatus = jsonConvert.convert<int>(json['collect_status']);
	if (collectStatus != null) {
		homeRecommendListR.collectStatus = collectStatus;
	}
	final List<HomeRecommendListRCollectUsers>? collectUsers = jsonConvert.convertListNotNull<HomeRecommendListRCollectUsers>(json['collect_users']);
	if (collectUsers != null) {
		homeRecommendListR.collectUsers = collectUsers;
	}
	final String? recall = jsonConvert.convert<String>(json['recall']);
	if (recall != null) {
		homeRecommendListR.recall = recall;
	}
	final List<HomeRecommendListREvents>? events = jsonConvert.convertListNotNull<HomeRecommendListREvents>(json['events']);
	if (events != null) {
		homeRecommendListR.events = events;
	}
	return homeRecommendListR;
}

Map<String, dynamic> $HomeRecommendListRToJson(HomeRecommendListR entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['n'] = entity.n;
	data['trim_title'] = entity.trimTitle;
	data['img'] = entity.img;
	data['pw'] = entity.pw;
	data['ph'] = entity.ph;
	data['vu'] = entity.vu;
	data['vfurl'] = entity.vfurl;
	data['a'] = entity.a?.toJson();
	data['stdname'] = entity.stdname;
	data['gif'] = entity.gif;
	data['p'] = entity.p;
	data['vc'] = entity.vc;
	data['fc'] = entity.fc;
	data['collect_count_text'] = entity.collectCountText;
	data['collect_status'] = entity.collectStatus;
	data['collect_users'] =  entity.collectUsers?.map((v) => v.toJson()).toList();
	data['recall'] = entity.recall;
	data['events'] =  entity.events?.map((v) => v.toJson()).toList();
	return data;
}

HomeRecommendListRA $HomeRecommendListRAFromJson(Map<String, dynamic> json) {
	final HomeRecommendListRA homeRecommendListRA = HomeRecommendListRA();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeRecommendListRA.id = id;
	}
	final String? n = jsonConvert.convert<String>(json['n']);
	if (n != null) {
		homeRecommendListRA.n = n;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		homeRecommendListRA.v = v;
	}
	final String? p = jsonConvert.convert<String>(json['p']);
	if (p != null) {
		homeRecommendListRA.p = p;
	}
	final int? lvl = jsonConvert.convert<int>(json['lvl']);
	if (lvl != null) {
		homeRecommendListRA.lvl = lvl;
	}
	final bool? isPrime = jsonConvert.convert<bool>(json['is_prime']);
	if (isPrime != null) {
		homeRecommendListRA.isPrime = isPrime;
	}
	final String? verifiedImage = jsonConvert.convert<String>(json['verified_image']);
	if (verifiedImage != null) {
		homeRecommendListRA.verifiedImage = verifiedImage;
	}
	final String? progressImage = jsonConvert.convert<String>(json['progress_image']);
	if (progressImage != null) {
		homeRecommendListRA.progressImage = progressImage;
	}
	final String? verifiedUrl = jsonConvert.convert<String>(json['verified_url']);
	if (verifiedUrl != null) {
		homeRecommendListRA.verifiedUrl = verifiedUrl;
	}
	return homeRecommendListRA;
}

Map<String, dynamic> $HomeRecommendListRAToJson(HomeRecommendListRA entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['n'] = entity.n;
	data['v'] = entity.v;
	data['p'] = entity.p;
	data['lvl'] = entity.lvl;
	data['is_prime'] = entity.isPrime;
	data['verified_image'] = entity.verifiedImage;
	data['progress_image'] = entity.progressImage;
	data['verified_url'] = entity.verifiedUrl;
	return data;
}

HomeRecommendListRCollectUsers $HomeRecommendListRCollectUsersFromJson(Map<String, dynamic> json) {
	final HomeRecommendListRCollectUsers homeRecommendListRCollectUsers = HomeRecommendListRCollectUsers();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeRecommendListRCollectUsers.id = id;
	}
	final String? n = jsonConvert.convert<String>(json['n']);
	if (n != null) {
		homeRecommendListRCollectUsers.n = n;
	}
	final String? p = jsonConvert.convert<String>(json['p']);
	if (p != null) {
		homeRecommendListRCollectUsers.p = p;
	}
	final int? lv = jsonConvert.convert<int>(json['lv']);
	if (lv != null) {
		homeRecommendListRCollectUsers.lv = lv;
	}
	final int? lvl = jsonConvert.convert<int>(json['lvl']);
	if (lvl != null) {
		homeRecommendListRCollectUsers.lvl = lvl;
	}
	final bool? isPrime = jsonConvert.convert<bool>(json['is_prime']);
	if (isPrime != null) {
		homeRecommendListRCollectUsers.isPrime = isPrime;
	}
	final String? verifiedImage = jsonConvert.convert<String>(json['verified_image']);
	if (verifiedImage != null) {
		homeRecommendListRCollectUsers.verifiedImage = verifiedImage;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		homeRecommendListRCollectUsers.v = v;
	}
	return homeRecommendListRCollectUsers;
}

Map<String, dynamic> $HomeRecommendListRCollectUsersToJson(HomeRecommendListRCollectUsers entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['n'] = entity.n;
	data['p'] = entity.p;
	data['lv'] = entity.lv;
	data['lvl'] = entity.lvl;
	data['is_prime'] = entity.isPrime;
	data['verified_image'] = entity.verifiedImage;
	data['v'] = entity.v;
	return data;
}

HomeRecommendListREvents $HomeRecommendListREventsFromJson(Map<String, dynamic> json) {
	final HomeRecommendListREvents homeRecommendListREvents = HomeRecommendListREvents();
	final String? c = jsonConvert.convert<String>(json['c']);
	if (c != null) {
		homeRecommendListREvents.c = c;
	}
	final String? u = jsonConvert.convert<String>(json['u']);
	if (u != null) {
		homeRecommendListREvents.u = u;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeRecommendListREvents.id = id;
	}
	return homeRecommendListREvents;
}

Map<String, dynamic> $HomeRecommendListREventsToJson(HomeRecommendListREvents entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['c'] = entity.c;
	data['u'] = entity.u;
	data['id'] = entity.id;
	return data;
}