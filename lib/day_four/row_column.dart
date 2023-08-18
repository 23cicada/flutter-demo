import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RowColumn')),

      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // 如果Row里面嵌套Row，或者Column里面再嵌套Column，
            // 那么只有最外面的Row或Column会占用尽可能大的空间，
            // 里面Row或Column所占用的空间为实际大小
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: [
              Container(
                color: Colors.red,
                child: const Column(
                  mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                  children: [
                    Text("hello"),
                    Text("I am"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: const Column(
                    children: [
                      Text("hello world"),
                      Text("I am Jack "),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      // // Row和Column都只会在主轴方向占用尽可能大的空间，而纵轴的长度则取决于他们最大子元素的长度
      // body: ConstrainedBox(
      //   // constraints: const BoxConstraints.expand(),
      //   constraints: const BoxConstraints(minWidth: double.infinity),
      //   child: const Column(
      //     children: [
      //       Text('Hello World'),
      //       Text('biu... biu... biu...')
      //     ],
      //   ),
      // ),

      // body: const Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       textDirection: TextDirection.rtl,
      //       children: [
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       verticalDirection: VerticalDirection.up,
      //       children: [
      //         Text(
      //           " hello world ",
      //           style: TextStyle(fontSize: 30.0),
      //         ),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
