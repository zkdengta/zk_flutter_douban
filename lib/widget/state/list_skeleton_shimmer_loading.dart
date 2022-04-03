
import 'package:flutter/material.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

///列表骨架屏
class ListSkeletonShimmerLoading extends StatelessWidget {
  const ListSkeletonShimmerLoading({
    Key? key,
    this.length = 10
  }) : super(key: key);

  final int length;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: length,
          itemBuilder: (context,index){
              return listItemSkeletonShimmerLoading(context);
          }
      ),
    );
  }

  Widget listItemSkeletonShimmerLoading(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: 80.0,
      child: Row(
        children: <Widget>[
          Container(
            height: 10.0,
            color: Colors.grey,
          ),
          Gaps.vGap10,
          Container(
            height: 10.0,
            color: Colors.grey,
          ),
          Gaps.vGap10,
          Container(
            height: 10.0,
            color: Colors.grey,
          ),
          Gaps.vGap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 50.0,
                height: 10.0,
                color: Colors.grey,
              ),
              Container(
                width: 70.0,
                height: 10.0,
                color: Colors.grey,
              ),
              Container(
                width: 20.0,
                height: 10.0,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
