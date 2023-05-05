import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/modes/home_notes_model.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/res/dimens.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

import '../home_notes_controller.dart';

class TopicWidget extends GetView<HomeNotesController> {
  const TopicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        color: AppColors.white,
        height: Dimens.gapDp110,
        child: ListView(
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _tagWidget(controller.topicFirstList),
                Gaps.vGap6,
                _tagWidget(controller.topicTwoList)
              ],
            )
          ],
        ),
      );
    });
  }


  Widget _tagWidget(List<HomeNotesTopicsHomeNotesTopics> list) {
    return Wrap( //流式布局
      alignment: WrapAlignment.start,
      spacing: 0,
      runSpacing: 10,
      children: list
          .map(
            (tag) =>
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(240, 251, 252, 1),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        width: 1,
                        color: tag.name! == '查看更多'
                            ? const Color.fromRGBO(94, 146, 140, 1)
                            : Colors.transparent
                    )
                ),
                child: Text(
                  '# ' + tag.name!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromRGBO(94, 146, 140, 1)
                  ),
                ),
              ),
            ),
      ).toList(),
    );
  }
}
