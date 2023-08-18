import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: Column(
        children: [
          // maxHeight: Infinity
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              child: const Text('List View'),
            ),
          ),
          // maxHieght: xxx
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: const Text('List View'),
              ),
            ),
          ),
          // 如果传入的布局约束是无限制的，[RenderFlex] 就会断言，因为剩余的可用空间将是无限的，而方框的大小不可能是无限的。
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) =>
                  Text('序号：$index'),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.blue,
              ),
              itemCount: 50,

              //该属性表示是否根据子组件的总长度来设置ListView的长度，默认值为false 。
              //默认情况下，ListView会在滚动方向尽可能多的占用空间。
              //当ListView在一个无边界(滚动方向上)的容器中时，shrinkWrap必须为true。
              // shrinkWrap: true, 此处设置后将会产生溢出。
            ),
          ),
        ],
      ),
      
      // body: ListView.builder(
      //   itemCount: 50,
      //   itemExtent: 50,
      //   itemBuilder: (BuildContext context, int index) => Text('序号：$index'),
      // ),

      // 这种方式适合只有少量的子组件数量已知且比较少的情况，反之则应该使用ListView.builder 按需动态构建列表项。
      // body: ListView(
      //   children: const [
      //     Text('I\'m dedicating every day to you'),
      //     Text('Domestic life was never quite my style'),
      //     Text('When you smile, you knock me out, I fall apart'),
      //     Text('And I thought I was so smart'),
      //   ],
      // ),
    );
  }
}
