import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "我是主页" ,
        style: TextStyle(color: Colors.red, fontSize: 30),
      ),
    );
  }
}
