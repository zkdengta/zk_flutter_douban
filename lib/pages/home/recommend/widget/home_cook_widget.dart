import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:zk_flutter_douban/modes/home_recommend_model.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/res/dimens.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

import '../../../../tool_views/cached_network_Image.dart';

class HomeCookWidget extends StatelessWidget {
  const HomeCookWidget({Key? key, required this.item}) : super(key: key);

  final HomeRecommendList item;

  @override
  Widget build(BuildContext context) {
    double height = 0;
    if (item.r == null || item.r!.ph == null) {
      height = MediaQuery.of(context).size.width / 3 * 2;
    } else {
      height = item.r!.ph! * MediaQuery.of(context).size.width / item.r!.pw!;
    }

    List<Widget> widgetList = [];
    widgetList.add(InkWell(
      child: CachedImage(
        url: item.r!.img!,
        width: MediaQuery.of(context).size.width,
        height: height,
      ),
      onTap: () {},
    ));

    if (item.r?.vfurl?.isNotEmpty == true) {
      /// 视频
      widgetList.add(Positioned(
        bottom: 5,
        right: 5,
        child: Image.asset(
          'images/cell_video_play@2x.png',
          width: 32,
          height: 32,
        ),
      ));
    }
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headWidget(),
          Stack(
            children: widgetList,
          ),
          _bottomWidget(),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              item.r!.n!,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.deepTextColor,
              ),
            ),
          ),
          Gaps.vGap20
        ],
      ),
    );
  }

  /// 头部
  Widget _headWidget() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: Dimens.gapDp60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: Dimens.gapDp34,
            height: Dimens.gapDp34,
            decoration: BoxDecoration(
                color: AppColors.page,
                borderRadius: BorderRadius.circular(Dimens.gapDp17)),
            child: ClipOval(
              child: FadeInImage.assetNetwork(
                placeholder: 'images/lazy-1.png',
                image: item.r!.a!.p!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gaps.hGap8,
          Text(
            item.r!.a!.n!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: Dimens.fontSp13,
                color: AppColors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Gaps.hGap8,
          Text(
            'LV.${item.r!.a!.lvl.toString()}',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: Dimens.fontSp11,
                color: AppColors.yellow,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  ///底部
  Widget _bottomWidget(){

    List<Widget> widgetList = [];
    for (var element in item.r!.collectUsers!) {
      widgetList.add(_avatarWidget(element.p!));
    }
    widgetList.add(Gaps.hGap10);
    widgetList.add(
      Text(
        item.r!.collectCountText!,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: Dimens.fontSp12,
          fontWeight: FontWeight.bold,
          color: AppColors.black
        ),
      )
    );

    return Container(
      height: Dimens.gapDp40,
      margin: const EdgeInsets.only(left: Dimens.gapDp10,right: Dimens.gapDp10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: widgetList),
          _toolView()
        ],
      ),
    );
  }

  Widget _avatarWidget(String imageStr){
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: AppColors.page,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(9),
      ),
      child: ClipOval(
        child: FadeInImage.assetNetwork(
          placeholder: 'images/lazy-1.png',
          image: imageStr,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _toolView() {
    return Row(
      children: [
        LikeButton(
          size: 22,
          isLiked: false,
          likeBuilder: (bool isLiked) {
            return Image.asset(
                isLiked == true
                    ? 'images/collcetionicon_on.png'
                    : "images/collcetionicon_off.png",
                color: isLiked == true ? AppColors.yellow : Colors.black87,
                width: 18,
                height: 18);
          }
        ),
        IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {},
            icon: const Image(
              image: AssetImage("images/icon_home_comment.png"),
              fit: BoxFit.cover,
              width: 22,
              height: 22,
            )),
        IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {},
            icon: const Image(
              image: AssetImage("images/icon_home_share.png"),
              fit: BoxFit.cover,
              width: 22,
              height: 22,
            )),
      ],
    );
  }
}
