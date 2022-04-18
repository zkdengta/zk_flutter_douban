import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_controller.dart';

class HomeBannerWidget extends GetView<HomeRecommendController> {

  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Swiper(
        itemCount: controller.homeBannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
            child: Image.network(
              controller.homeBannerList[index].i!,
              fit: BoxFit.cover,
            ),
            onTap: (){

            },
          );
        },
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 5),
          builder: RectSwiperPaginationBuilder(
            color: Colors.grey,
            activeColor: Colors.white,
            size: Size(18,8),
            activeSize: Size(18,8)
          )
        ),
      );
    });
  }
}
