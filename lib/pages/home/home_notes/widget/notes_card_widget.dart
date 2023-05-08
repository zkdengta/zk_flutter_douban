import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:zk_flutter_douban/modes/home_notes_model.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

class NotesCardWidget extends StatelessWidget {
  const NotesCardWidget({Key? key,required this.item}) : super(key: key);

  final HomeNotesList item;

  @override
  Widget build(BuildContext context) {

    String _imageStr = '';
    if (item.activity != null) {
      _imageStr = 'images/icon_feed_picid@2x.png';
    } else {
      if (item.note!.videoUrl == null) {
        _imageStr = 'images/icon_feed_picid@2x.png';
      } else {
        _imageStr = 'images/cell_video_play@2x.png';
      }
    }

    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: AppColors.page,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(
                    imageUrl: item.activity != null ? item.activity!.image! : item.note!.imageU!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                  top: 10,
                  child:Image.asset(
                    _imageStr,
                    width: 28,
                    height: 28,
                  )
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Text(
              item.activity != null ? item.activity!.name! : item.note!.title!,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 14
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5,right: 10,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _leftWidget(),
                _joinWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _leftWidget(){
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: AppColors.page,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipOval(
            child: FadeInImage.assetNetwork(
              placeholder: 'images/lazy-1.png',
              image: item.activity != null
                  ? item.activity!.author!.p!
                  : item.note!.author!.p!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gaps.hGap5,
        SizedBox(
          width: 60,
          child: Text(
            item.activity != null
                ? item.activity!.author!.n!
                : item.note!.author!.n!,
            style: const TextStyle(
              fontSize: 11,
              color: AppColors.qianTextColor
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  Widget _joinWidget(){
    if(item.activity != null){
      return Row(
        children: [
          FadeInImage.assetNetwork(
            width: 14,
              height: 14,
              placeholder: 'images/lazy-1.png',
              image: item.activity!.actionIcon!,
            fit: BoxFit.cover,
          ),
          Gaps.hGap5,
          Text(
            item.activity!.actionTitle!,
            style: const TextStyle(fontSize: 13, color: Colors.black),
          ),
        ],
      );
    }else{
      return LikeButton(
        size: 16,
        likeCount: item.note!.likeCount,
        isLiked: false,
        countBuilder: (int? count, bool isLiked, String text) {
          Widget result;
          if (isLiked == false) {
            result = Text(
              text,
              style: const TextStyle(color: AppColors.qianTextColor, fontSize: 12),
            );
          } else {
            result = Text(
              text,
              style: const TextStyle(color: Colors.black87, fontSize: 12),
            );
          }
          return result;
        },
        likeBuilder: (bool isLiked) {
          return Image.asset(
              'images/question_comment_unlike_7@2x.png',
              color: isLiked == true ? AppColors.yellow : Colors.grey,
              width: 18,
              height: 18);
        },
        likeCountAnimationType: false
            ? LikeCountAnimationType.part
            : LikeCountAnimationType.none,
        likeCountPadding: const EdgeInsets.only(left: 5.0),
      );
    }
  }
}
