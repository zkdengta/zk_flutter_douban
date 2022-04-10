import 'package:flutter/material.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

///首页的头部widget
class NavHomePage extends StatelessWidget {
  const NavHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 45,
          color: Colors.white,
          margin: const EdgeInsets.only(left: 0, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/group_add.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gaps.vGap12,
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                height: 35,
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        "images/button_search_gray.png",
                        fit: BoxFit.cover,
                        width: 18,
                        height: 18,
                      ),
                      Gaps.vGap5,
                      const Text(
                        "懒人食谱",
                        style: TextStyle(color: Colors.black26, fontSize: 14),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.page),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                              color: AppColors.page, width: 0.5),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      )),
                ),
              ),
              Gaps.vGap12,
              SizedBox(
                width: 22,
                height: 22,
                child: InkWell(
                  onTap: (){},
                  child: Image.asset(
                    "images/icon_home_category.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: InkWell(
                  onTap: (){},
                  child: Image.asset(
                    "images/navi_item_messages.png",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 5,
            right: 0,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(7)
              ),
              child: const Text(
                "2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.white
                ),
              ),
            )
        )
      ],
    );
  }
}
