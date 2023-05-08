import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:lottie/lottie.dart';
import 'package:zk_flutter_douban/res/gaps.dart';
import 'package:zk_flutter_douban/res/r.dart';
import 'package:zk_flutter_douban/res/strings.dart';

import '../../res/app_colors.dart';
import 'load_state.dart';

/// 描述: 加载错误页面

class EmptyErrorStatePage extends StatelessWidget {
  const EmptyErrorStatePage({
    Key? key,
    required this.loadState,
    required this.onTap,
    required this.errMsg,
    this.showErrMsg = true,
  }) : super(key: key);

  /// 页面类型
  final LoadState loadState;
  final VoidCallback onTap;
  final String? errMsg;
  final bool? showErrMsg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.vGap150,
                Container(
                  child: Lottie.asset(
                    loadState == LoadState.empty
                        ? R.assetsLottieRefreshEmpty
                        : R.assetsLottieRefreshError,
                    width: 200,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
                loadState == LoadState.empty ? Gaps.empty : Gaps.vGap26,
                Visibility(
                  visible: showErrMsg??false,
                  child: Text(
                    '$errMsg，${StringsConstant.clickRetry.tr}',
                      style: const TextStyle(
                          color: AppColors.yellow,
                          fontSize: 16
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
