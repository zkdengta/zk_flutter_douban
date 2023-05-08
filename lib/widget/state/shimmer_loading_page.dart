import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/res/gaps.dart';
import 'package:zk_flutter_douban/res/strings.dart';
import 'package:zk_flutter_douban/widget/state/list_skeleton_shimmer_loading.dart';

///骨架屏
class ShimmerLoadingPage extends StatelessWidget {
  const ShimmerLoadingPage({
    Key? key,
    this.simpleLoading = true
  }) : super(key: key);

  final bool simpleLoading;

  @override
  Widget build(BuildContext context) {
    Widget widget;

    simpleLoading ? widget = simpleShimmerLoading(context) : widget =
        listShimmerLoading(context);

    return SafeArea(
        child: Scaffold(
          body: widget,
    ));
  }

  Shimmer simpleShimmerLoading(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                  opacity: 0.6,
                child: Image.asset(
                  'images/launch_image.png',
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Gaps.vGap10,
              Text(
                StringsConstant.loading.tr,
                style: const TextStyle(
                  color: AppColors.yellow,
                  fontSize: 16
                ),
              )
            ],
          ),
        )
    );
  }

  Widget listShimmerLoading(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: const ListSkeletonShimmerLoading()
    );
  }
}
