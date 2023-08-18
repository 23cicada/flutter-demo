import 'package:flutter/material.dart';

// Align和Stack对比
// Align和Stack/Positioned都可以用于指定子元素相对于父元素的偏移，但它们还是有两个主要区别：
// 1. 定位参考系统不同；Stack/Positioned定位的参考系可以是父容器矩形的四个顶点；
//    而Align则需要先通过alignment参数来确定坐标原点，不同的alignment会对应不同原点，最终的偏移是需要通过alignment的转换公式来计算出。
// 2. Stack可以有多个子元素，并且子元素可以堆叠，而Align只能有一个子元素，不存在堆叠。
class AlignLearn extends StatelessWidget {
  const AlignLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue.shade50,
            child: const Align(
              // 它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高。
              // 如果值为null，则组件的宽高将会占用尽可能多的空间。
              // 此时Align width: 120, height: 120
              widthFactor: 2,
              heightFactor: 2,
              child: FlutterLogo(size: 60),
            ),
          ),
          Container(
            color: Colors.blue.shade50,
            child: const Align(
              widthFactor: 2,
              heightFactor: 2,
              //alignment：表示子组件在父组件中的起始位置 Alignment|FractionalOffset

              // Alignment 矩形的中心点作为坐标原点
              // x、y的值从-1到1分别代表矩形左边到右边的距离和顶部到底边的距离
              // Alignment(1, -1) = Alignment.topRight,
              alignment: Alignment.topRight,
              child: FlutterLogo(size: 60),
            ),
          ),
          Container(
            color: Colors.blue.shade50,
            width: 120,
            height: 120,
            child: const Align(
              // FractionalOffset 的坐标原点为矩形的左侧顶点
              alignment:
                  FractionalOffset(0.5, 0.5), // = FractionalOffset.center
              child: FlutterLogo(size: 60),
            ),
          ),
          
          // Center继承自Align，它比Align只少了一个alignment 参数；
          // Center组件其实是对齐方式确定（Alignment.center）了的Align。

          // 此时Center宽度将会占用尽可能多的空间
          const DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              child: Text('Center'),
            ),
          ),

          const DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text('Center'),
            ),
          )
        ],
      ),
    );
  }
}
