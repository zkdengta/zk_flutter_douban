

/// 列表模型数组
class BannerModelList {
  List<BannerModel> list;
  BannerModelList(this.list);
  factory BannerModelList.fromJson(List<dynamic> list) {
    return BannerModelList(
      list.map((item) => BannerModel.fromJson(item)).toList(),
    );
  }
}

class BannerModel {
  /// 图片
  String? i;
  /// 资讯信息id
  int? id;
  /// 文字描述
  String? t;
  /// H5连接
  String? url;
  /// 活动名称
  String? name;
  /// 作者名字
  String? nickname;

  BannerModel(this.i,this.id,this.t,this.url,this.name,this.nickname);

  BannerModel.fromJson(Map<String, dynamic> json) {
    i = json['i'];
    id = json['id'];
    t = json['t'];
    url = json['url'];
    name = json['name'];
    nickname = json['nickname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['i'] = i;
    data['id'] = id;
    data['t'] = t;
    data['url'] = url;
    data['nickname'] = nickname;
    return data;
  }
}














