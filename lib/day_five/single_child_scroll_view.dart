import 'dart:math';

import 'package:flutter/material.dart';

class SingleChildScrollViewLearn extends StatelessWidget {
  const SingleChildScrollViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    int length = Random().nextInt(60) + 20;
    List list = List.generate(length, (index) {
      int sn = index + 1;
      return '序号：$sn';
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollViewLearn'),
      ),
      body: SingleChildScrollView( // 只应在期望的内容不会超过屏幕太多时使用，不支持基于 Sliver 的延迟加载模型
        // minWidth: 0.0
        // maxWidth: 612.8（屏幕宽度）
        // minHeight: 0.0
        // maxHeight: Infinity
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) => Container(
          decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.pink)),
          child: Column(
            children: list.map((e) => Text(e)).toList(),
          ),
        )),
      ),
    );
  }
}
